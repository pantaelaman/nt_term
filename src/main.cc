#define Uses_TKeys
#define Uses_TApplication
#define Uses_TEvent
#define Uses_TRect
#define Uses_TDialog
#define Uses_TCheckBoxes
#define Uses_TInputLine
#define Uses_TLabel
#define Uses_TValidator
#define Uses_TSItem
#define Uses_TStaticText
#define Uses_TButton
#define Uses_TMenuBar
#define Uses_TSubMenu
#define Uses_TMenuItem
#define Uses_TStatusLine
#define Uses_TStatusItem
#define Uses_TStatusDef
#define Uses_TDeskTop
#include <tvision/tv.h>

#define vtInt 0
#define vtBool 1

#include "util.h"
#include "nt.h"

const int cmCreateValueWin = 100;

static NetworkTableInstance *nt = NetworkTable::getNTInstance();

ValueCreaterData *vcdata;

class NTTermApp : public TApplication
{

public:

    NTTermApp();

    virtual void handleEvent(TEvent& event);
    static TMenuBar *initMenuBar(TRect);
    static TStatusLine *initStatusLine(TRect);

private:

    void proceedBox();
    void valueBox(const char *name);

};

class ValueWindow : public TWindow
{

public:

    ValueWindow(const TRect& r, const char *aTitle, short aNumber, uint valueType);

};

class ValueInterior : public TView
{

public:

    ValueInterior(TRect bounds, uint valueType);
    virtual void draw();
    std::string name;
    uint valueType;

};

ValueWindow::ValueWindow(const TRect& bounds, const char *aTitle, short aNumber, uint valueType) :
    TWindowInit(&ValueWindow::initFrame),
    TWindow(bounds, aTitle, aNumber)
{
    TRect r = getClipRect();
    r.grow(-1, -1);
    insert(new ValueInterior(r, valueType));
}

ValueInterior::ValueInterior(TRect bounds, uint aValueType) : TView(bounds) {
    valueType = aValueType;
    growMode = gfGrowHiX | gfGrowHiY;
    options = options | ofFramed;
}

void ValueInterior::draw() {
    TDrawBuffer b;
    TView::draw();
    b.moveStr(1, std::to_string(nt->getNumber(name, 0)), getColor(6));
    writeBuf(1, 1, size.x, 1, b);
}

NTTermApp::NTTermApp() :
    TProgInit(&NTTermApp::initStatusLine,
               &NTTermApp::initMenuBar,
               &NTTermApp::initDeskTop
            )
{
    vcdata = new ValueCreaterData;
    strcpy(vcdata->value_name, "Value");
}

void NTTermApp::proceedBox()
{
    TDialog *d = new TDialog(TRect(25, 5, 56, 13), "Hello, World!");
    if (d) {
        TView *b = new TInputLine(TRect(2, 3, 29, 4), 128);

        d->insert(b);
        d->insert(new TLabel(TRect(2, 2, 29, 3), "~V~alue Name", b));
        d->insert(new TButton(TRect(1, 5, 14, 7), "~C~reate", cmOK, bfDefault));
        d->insert(new TButton(TRect(15, 5, 29, 7), "Cancel", cmCancel, bfNormal));

        d->setData(vcdata);
        ushort control = deskTop->execView(d);

        if (control != cmCancel) {
            d->getData(vcdata);
            valueBox(vcdata->value_name);
            strcpy(vcdata->value_name, "Value");
        }
    }
    destroy(d);
}

void NTTermApp::valueBox(const char *name) {
    TRect r(2, 2, 26, 7);
    ValueWindow *w = new ValueWindow(r, name, 0, vtInt);

    deskTop->insert(w);
}

void NTTermApp::handleEvent(TEvent& event)
{
    TApplication::handleEvent(event);
    if(event.what == evCommand)
        {
        switch(event.message.command)
            {
            case cmCreateValueWin:
                proceedBox();
                clearEvent(event);
                break;
            default:
                break;
            }
        }
}

TMenuBar *NTTermApp::initMenuBar(TRect r)
{

    r.b.y = r.a.y+1;

    return new TMenuBar(r,
      *new TSubMenu("~E~dit", kbAltE) +
        *new TMenuItem("~N~ew Value...", cmCreateValueWin, kbAltN) +
         newLine() +
        *new TMenuItem("E~x~it", cmQuit, cmQuit, hcNoContext, "Alt-X")
        );

}

TStatusLine *NTTermApp::initStatusLine(TRect r)
{
    r.a.y = r.b.y-1;
    return new TStatusLine(r,
        *new TStatusDef(0, 0xFFFF) +
            *new TStatusItem("~Alt-X~ Exit", kbAltX, cmQuit) +
            *new TStatusItem("~Alt-Q~ Close Window", kbAltQ, cmClose)
           );
}

int main()
{
    nt->putNumber("Distance", 100);
    NTTermApp helloWorld;
    helloWorld.run();
    return 0;
}
