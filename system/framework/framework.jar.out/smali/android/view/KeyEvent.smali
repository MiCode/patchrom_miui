.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field private static final KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LAST_KEYCODE:I = 0xde

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 655
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 885
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META_SHIFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "META_ALT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "META_SYM_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "META_FUNCTION_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "META_ALT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "META_ALT_RIGHT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "META_SHIFT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "META_SHIFT_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "META_CAP_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "META_ALT_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "META_SYM_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0x00000800"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "META_CTRL_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "META_CTRL_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "META_CTRL_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0x00008000"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "META_META_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "META_META_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "META_META_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "0x00080000"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "META_CAPS_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "META_NUM_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "META_SCROLL_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "0x00800000"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "0x01000000"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "0x02000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0x04000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "0x08000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "0x10000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "0x20000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "0x40000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "0x80000000"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1358
    invoke-static {}, Landroid/view/KeyEvent;->populateKeycodeSymbolicNames()V

    .line 2899
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1362
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    .line 1371
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1372
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1373
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1374
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1376
    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .prologue
    .line 1392
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1393
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1394
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1395
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1396
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1397
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1399
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .prologue
    .line 1416
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1417
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1418
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1419
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1420
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1421
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1422
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1423
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1424
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 0
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .prologue
    .line 1444
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1445
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1446
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1447
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1448
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1449
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1450
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1451
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1452
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1453
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 0
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .prologue
    .line 1474
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1475
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1476
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1477
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1478
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1479
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1480
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1481
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1482
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1483
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1484
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 0
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .prologue
    .line 1506
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1507
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1508
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1509
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1510
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1511
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1512
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1513
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1514
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1515
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1516
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1517
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1531
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1532
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1533
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1534
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1535
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1536
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1537
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1538
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1539
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1540
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1541
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2916
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2925
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2926
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2927
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1546
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1547
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1548
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1549
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1550
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1551
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1552
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1553
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1554
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1555
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1556
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1557
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1558
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .prologue
    .line 1718
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1719
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1720
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1721
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1722
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1723
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1724
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1725
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1726
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1727
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1728
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1731
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1572
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1573
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1574
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1575
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1576
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1577
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1578
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1579
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1580
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1581
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1582
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1583
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1584
    return-void
.end method

.method static synthetic access$076(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p0, "x0"    # Landroid/view/KeyEvent;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 2809
    packed-switch p0, :pswitch_data_0

    .line 2817
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2811
    :pswitch_0
    const-string v0, "ACTION_DOWN"

    goto :goto_0

    .line 2813
    :pswitch_1
    const-string v0, "ACTION_UP"

    goto :goto_0

    .line 2815
    :pswitch_2
    const-string v0, "ACTION_MULTIPLE"

    goto :goto_0

    .line 2809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .prologue
    .line 1741
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .prologue
    .line 1752
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1753
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1754
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .prologue
    .line 1689
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .prologue
    .line 1705
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1706
    .local v0, "ret":Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1707
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1708
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1709
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2913
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 1
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .prologue
    .line 1275
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .locals 1

    .prologue
    .line 1266
    const/16 v0, 0xde

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .locals 1

    .prologue
    .line 1980
    const v0, 0x770ff

    return v0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1844
    sparse-switch p0, :sswitch_data_0

    .line 1849
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1847
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1844
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1802
    sparse-switch p0, :sswitch_data_0

    .line 1836
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1834
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1802
    nop

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static isModifierKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2000
    sparse-switch p0, :sswitch_data_0

    .line 2014
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2012
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2000
    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3f -> :sswitch_0
        0x4e -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .locals 5
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 2845
    if-nez p0, :cond_0

    .line 2846
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "symbolicName must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2849
    :cond_0
    sget-object v3, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2850
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2851
    sget-object v3, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2859
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 2850
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2857
    :cond_2
    const/16 v3, 0xa

    :try_start_0
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 2858
    :catch_0
    move-exception v1

    .line 2859
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2832
    sget-object v1, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2833
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2140
    and-int v4, p1, p2

    if-eqz v4, :cond_0

    move v1, v2

    .line 2141
    .local v1, "wantBasic":Z
    :goto_0
    or-int v0, p3, p4

    .line 2142
    .local v0, "directional":I
    and-int v4, p1, v0

    if-eqz v4, :cond_1

    .line 2144
    .local v2, "wantLeftOrRight":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 2145
    if-eqz v2, :cond_2

    .line 2146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_0
    move v1, v3

    .line 2140
    goto :goto_0

    .restart local v0    # "directional":I
    .restart local v1    # "wantBasic":Z
    :cond_1
    move v2, v3

    .line 2142
    goto :goto_1

    .line 2150
    .restart local v2    # "wantLeftOrRight":Z
    :cond_2
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    .line 2154
    .end local p0    # "metaState":I
    :cond_3
    :goto_2
    return p0

    .line 2151
    .restart local p0    # "metaState":I
    :cond_4
    if-eqz v2, :cond_3

    .line 2152
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr p0, v3

    goto :goto_2
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 4
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    .line 2119
    const v1, 0x700f00

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 2120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2126
    :cond_0
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    const v2, 0x770ff

    and-int p0, v1, v2

    .line 2127
    const/16 v1, 0x40

    const/16 v2, 0x80

    invoke-static {p0, p1, v0, v1, v2}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2129
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2131
    const/16 v1, 0x1000

    const/16 v2, 0x2000

    const/16 v3, 0x4000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2133
    const/high16 v1, 0x10000

    const/high16 v2, 0x20000

    const/high16 v3, 0x40000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2135
    if-ne p0, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 2
    .param p0, "metaState"    # I

    .prologue
    .line 2083
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "metaState"    # I

    .prologue
    .line 2874
    if-nez p0, :cond_1

    .line 2875
    const-string v2, "0"

    .line 2896
    :cond_0
    :goto_0
    return-object v2

    .line 2877
    :cond_1
    const/4 v3, 0x0

    .line 2878
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2879
    .local v0, "i":I
    :goto_1
    if-eqz p0, :cond_5

    .line 2880
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 2881
    .local v1, "isSet":Z
    :goto_2
    ushr-int/lit8 p0, p0, 0x1

    .line 2882
    if-eqz v1, :cond_2

    .line 2883
    sget-object v4, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 2884
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 2885
    if-eqz p0, :cond_0

    .line 2888
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2894
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 2895
    goto :goto_1

    .line 2880
    .end local v1    # "isSet":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 2890
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2891
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2896
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private native native_hasDefaultAction(I)Z
.end method

.method private native native_isSystemKey(I)Z
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 2043
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    .line 2044
    or-int/lit8 p0, p0, 0x1

    .line 2046
    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    .line 2047
    or-int/lit8 p0, p0, 0x2

    .line 2049
    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    .line 2050
    or-int/lit16 p0, p0, 0x1000

    .line 2052
    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 2053
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2055
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 2056
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2058
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 2059
    or-int/lit8 p0, p0, 0x2

    .line 2061
    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    .line 2062
    or-int/lit8 p0, p0, 0x4

    .line 2064
    :cond_6
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .locals 3

    .prologue
    .line 1588
    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1589
    :try_start_0
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1590
    .local v0, "ev":Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 1591
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "ev":Landroid/view/KeyEvent;
    invoke-direct {v0}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v2

    .line 1598
    .restart local v0    # "ev":Landroid/view/KeyEvent;
    :goto_0
    return-object v0

    .line 1593
    :cond_0
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1594
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 1595
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 1597
    invoke-virtual {v0}, Landroid/view/KeyEvent;->prepareForReuse()V

    goto :goto_0

    .line 1595
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .prologue
    .line 1609
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1610
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1611
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1612
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1613
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1614
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1615
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1616
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1617
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1618
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1619
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1620
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1621
    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 3
    .param p0, "other"    # Landroid/view/KeyEvent;

    .prologue
    .line 1630
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1631
    .local v0, "ev":Landroid/view/KeyEvent;
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1632
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1633
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1634
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1635
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1636
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1637
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1638
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1639
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1640
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1641
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1642
    return-object v0
.end method

.method private static populateKeycodeSymbolicNames()V
    .locals 3

    .prologue
    .line 657
    sget-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 658
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "KEYCODE_UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 659
    const/4 v1, 0x1

    const-string v2, "KEYCODE_SOFT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 660
    const/4 v1, 0x2

    const-string v2, "KEYCODE_SOFT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 661
    const/4 v1, 0x3

    const-string v2, "KEYCODE_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 662
    const/4 v1, 0x4

    const-string v2, "KEYCODE_BACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 663
    const/4 v1, 0x5

    const-string v2, "KEYCODE_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 664
    const/4 v1, 0x6

    const-string v2, "KEYCODE_ENDCALL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 665
    const/4 v1, 0x7

    const-string v2, "KEYCODE_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 666
    const/16 v1, 0x8

    const-string v2, "KEYCODE_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 667
    const/16 v1, 0x9

    const-string v2, "KEYCODE_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 668
    const/16 v1, 0xa

    const-string v2, "KEYCODE_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 669
    const/16 v1, 0xb

    const-string v2, "KEYCODE_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 670
    const/16 v1, 0xc

    const-string v2, "KEYCODE_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 671
    const/16 v1, 0xd

    const-string v2, "KEYCODE_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 672
    const/16 v1, 0xe

    const-string v2, "KEYCODE_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 673
    const/16 v1, 0xf

    const-string v2, "KEYCODE_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 674
    const/16 v1, 0x10

    const-string v2, "KEYCODE_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 675
    const/16 v1, 0x11

    const-string v2, "KEYCODE_STAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 676
    const/16 v1, 0x12

    const-string v2, "KEYCODE_POUND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 677
    const/16 v1, 0x13

    const-string v2, "KEYCODE_DPAD_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 678
    const/16 v1, 0x14

    const-string v2, "KEYCODE_DPAD_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 679
    const/16 v1, 0x15

    const-string v2, "KEYCODE_DPAD_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 680
    const/16 v1, 0x16

    const-string v2, "KEYCODE_DPAD_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 681
    const/16 v1, 0x17

    const-string v2, "KEYCODE_DPAD_CENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 682
    const/16 v1, 0x18

    const-string v2, "KEYCODE_VOLUME_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 683
    const/16 v1, 0x19

    const-string v2, "KEYCODE_VOLUME_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 684
    const/16 v1, 0x1a

    const-string v2, "KEYCODE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 685
    const/16 v1, 0x1b

    const-string v2, "KEYCODE_CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 686
    const/16 v1, 0x1c

    const-string v2, "KEYCODE_CLEAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 687
    const/16 v1, 0x1d

    const-string v2, "KEYCODE_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 688
    const/16 v1, 0x1e

    const-string v2, "KEYCODE_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 689
    const/16 v1, 0x1f

    const-string v2, "KEYCODE_C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 690
    const/16 v1, 0x20

    const-string v2, "KEYCODE_D"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 691
    const/16 v1, 0x21

    const-string v2, "KEYCODE_E"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 692
    const/16 v1, 0x22

    const-string v2, "KEYCODE_F"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 693
    const/16 v1, 0x23

    const-string v2, "KEYCODE_G"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 694
    const/16 v1, 0x24

    const-string v2, "KEYCODE_H"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 695
    const/16 v1, 0x25

    const-string v2, "KEYCODE_I"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 696
    const/16 v1, 0x26

    const-string v2, "KEYCODE_J"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 697
    const/16 v1, 0x27

    const-string v2, "KEYCODE_K"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 698
    const/16 v1, 0x28

    const-string v2, "KEYCODE_L"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 699
    const/16 v1, 0x29

    const-string v2, "KEYCODE_M"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 700
    const/16 v1, 0x2a

    const-string v2, "KEYCODE_N"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 701
    const/16 v1, 0x2b

    const-string v2, "KEYCODE_O"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 702
    const/16 v1, 0x2c

    const-string v2, "KEYCODE_P"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 703
    const/16 v1, 0x2d

    const-string v2, "KEYCODE_Q"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 704
    const/16 v1, 0x2e

    const-string v2, "KEYCODE_R"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 705
    const/16 v1, 0x2f

    const-string v2, "KEYCODE_S"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 706
    const/16 v1, 0x30

    const-string v2, "KEYCODE_T"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 707
    const/16 v1, 0x31

    const-string v2, "KEYCODE_U"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 708
    const/16 v1, 0x32

    const-string v2, "KEYCODE_V"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 709
    const/16 v1, 0x33

    const-string v2, "KEYCODE_W"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 710
    const/16 v1, 0x34

    const-string v2, "KEYCODE_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 711
    const/16 v1, 0x35

    const-string v2, "KEYCODE_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 712
    const/16 v1, 0x36

    const-string v2, "KEYCODE_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 713
    const/16 v1, 0x37

    const-string v2, "KEYCODE_COMMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 714
    const/16 v1, 0x38

    const-string v2, "KEYCODE_PERIOD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 715
    const/16 v1, 0x39

    const-string v2, "KEYCODE_ALT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 716
    const/16 v1, 0x3a

    const-string v2, "KEYCODE_ALT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 717
    const/16 v1, 0x3b

    const-string v2, "KEYCODE_SHIFT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 718
    const/16 v1, 0x3c

    const-string v2, "KEYCODE_SHIFT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 719
    const/16 v1, 0x3d

    const-string v2, "KEYCODE_TAB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 720
    const/16 v1, 0x3e

    const-string v2, "KEYCODE_SPACE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 721
    const/16 v1, 0x3f

    const-string v2, "KEYCODE_SYM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 722
    const/16 v1, 0x40

    const-string v2, "KEYCODE_EXPLORER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 723
    const/16 v1, 0x41

    const-string v2, "KEYCODE_ENVELOPE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 724
    const/16 v1, 0x42

    const-string v2, "KEYCODE_ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 725
    const/16 v1, 0x43

    const-string v2, "KEYCODE_DEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 726
    const/16 v1, 0x44

    const-string v2, "KEYCODE_GRAVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 727
    const/16 v1, 0x45

    const-string v2, "KEYCODE_MINUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 728
    const/16 v1, 0x46

    const-string v2, "KEYCODE_EQUALS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 729
    const/16 v1, 0x47

    const-string v2, "KEYCODE_LEFT_BRACKET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 730
    const/16 v1, 0x48

    const-string v2, "KEYCODE_RIGHT_BRACKET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 731
    const/16 v1, 0x49

    const-string v2, "KEYCODE_BACKSLASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 732
    const/16 v1, 0x4a

    const-string v2, "KEYCODE_SEMICOLON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 733
    const/16 v1, 0x4b

    const-string v2, "KEYCODE_APOSTROPHE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 734
    const/16 v1, 0x4c

    const-string v2, "KEYCODE_SLASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 735
    const/16 v1, 0x4d

    const-string v2, "KEYCODE_AT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 736
    const/16 v1, 0x4e

    const-string v2, "KEYCODE_NUM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 737
    const/16 v1, 0x4f

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 738
    const/16 v1, 0x50

    const-string v2, "KEYCODE_FOCUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 739
    const/16 v1, 0x51

    const-string v2, "KEYCODE_PLUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 740
    const/16 v1, 0x52

    const-string v2, "KEYCODE_MENU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 741
    const/16 v1, 0x53

    const-string v2, "KEYCODE_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 742
    const/16 v1, 0x54

    const-string v2, "KEYCODE_SEARCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 743
    const/16 v1, 0x55

    const-string v2, "KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 744
    const/16 v1, 0x56

    const-string v2, "KEYCODE_MEDIA_STOP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 745
    const/16 v1, 0x57

    const-string v2, "KEYCODE_MEDIA_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 746
    const/16 v1, 0x58

    const-string v2, "KEYCODE_MEDIA_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 747
    const/16 v1, 0x59

    const-string v2, "KEYCODE_MEDIA_REWIND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 748
    const/16 v1, 0x5a

    const-string v2, "KEYCODE_MEDIA_FAST_FORWARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 749
    const/16 v1, 0x5b

    const-string v2, "KEYCODE_MUTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 750
    const/16 v1, 0x5c

    const-string v2, "KEYCODE_PAGE_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 751
    const/16 v1, 0x5d

    const-string v2, "KEYCODE_PAGE_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 752
    const/16 v1, 0x5e

    const-string v2, "KEYCODE_PICTSYMBOLS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 753
    const/16 v1, 0x5f

    const-string v2, "KEYCODE_SWITCH_CHARSET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 754
    const/16 v1, 0x60

    const-string v2, "KEYCODE_BUTTON_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 755
    const/16 v1, 0x61

    const-string v2, "KEYCODE_BUTTON_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 756
    const/16 v1, 0x62

    const-string v2, "KEYCODE_BUTTON_C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 757
    const/16 v1, 0x63

    const-string v2, "KEYCODE_BUTTON_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 758
    const/16 v1, 0x64

    const-string v2, "KEYCODE_BUTTON_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 759
    const/16 v1, 0x65

    const-string v2, "KEYCODE_BUTTON_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 760
    const/16 v1, 0x66

    const-string v2, "KEYCODE_BUTTON_L1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 761
    const/16 v1, 0x67

    const-string v2, "KEYCODE_BUTTON_R1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 762
    const/16 v1, 0x68

    const-string v2, "KEYCODE_BUTTON_L2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 763
    const/16 v1, 0x69

    const-string v2, "KEYCODE_BUTTON_R2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 764
    const/16 v1, 0x6a

    const-string v2, "KEYCODE_BUTTON_THUMBL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 765
    const/16 v1, 0x6b

    const-string v2, "KEYCODE_BUTTON_THUMBR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 766
    const/16 v1, 0x6c

    const-string v2, "KEYCODE_BUTTON_START"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 767
    const/16 v1, 0x6d

    const-string v2, "KEYCODE_BUTTON_SELECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 768
    const/16 v1, 0x6e

    const-string v2, "KEYCODE_BUTTON_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 769
    const/16 v1, 0x6f

    const-string v2, "KEYCODE_ESCAPE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 770
    const/16 v1, 0x70

    const-string v2, "KEYCODE_FORWARD_DEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 771
    const/16 v1, 0x71

    const-string v2, "KEYCODE_CTRL_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 772
    const/16 v1, 0x72

    const-string v2, "KEYCODE_CTRL_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 773
    const/16 v1, 0x73

    const-string v2, "KEYCODE_CAPS_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 774
    const/16 v1, 0x74

    const-string v2, "KEYCODE_SCROLL_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 775
    const/16 v1, 0x75

    const-string v2, "KEYCODE_META_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 776
    const/16 v1, 0x76

    const-string v2, "KEYCODE_META_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 777
    const/16 v1, 0x77

    const-string v2, "KEYCODE_FUNCTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 778
    const/16 v1, 0x78

    const-string v2, "KEYCODE_SYSRQ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 779
    const/16 v1, 0x79

    const-string v2, "KEYCODE_BREAK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 780
    const/16 v1, 0x7a

    const-string v2, "KEYCODE_MOVE_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 781
    const/16 v1, 0x7b

    const-string v2, "KEYCODE_MOVE_END"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 782
    const/16 v1, 0x7c

    const-string v2, "KEYCODE_INSERT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 783
    const/16 v1, 0x7d

    const-string v2, "KEYCODE_FORWARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 784
    const/16 v1, 0x7e

    const-string v2, "KEYCODE_MEDIA_PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 785
    const/16 v1, 0x7f

    const-string v2, "KEYCODE_MEDIA_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 786
    const/16 v1, 0x80

    const-string v2, "KEYCODE_MEDIA_CLOSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 787
    const/16 v1, 0x81

    const-string v2, "KEYCODE_MEDIA_EJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 788
    const/16 v1, 0x82

    const-string v2, "KEYCODE_MEDIA_RECORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 789
    const/16 v1, 0x83

    const-string v2, "KEYCODE_F1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 790
    const/16 v1, 0x84

    const-string v2, "KEYCODE_F2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 791
    const/16 v1, 0x85

    const-string v2, "KEYCODE_F3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 792
    const/16 v1, 0x86

    const-string v2, "KEYCODE_F4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 793
    const/16 v1, 0x87

    const-string v2, "KEYCODE_F5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 794
    const/16 v1, 0x88

    const-string v2, "KEYCODE_F6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 795
    const/16 v1, 0x89

    const-string v2, "KEYCODE_F7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 796
    const/16 v1, 0x8a

    const-string v2, "KEYCODE_F8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 797
    const/16 v1, 0x8b

    const-string v2, "KEYCODE_F9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 798
    const/16 v1, 0x8c

    const-string v2, "KEYCODE_F10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 799
    const/16 v1, 0x8d

    const-string v2, "KEYCODE_F11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 800
    const/16 v1, 0x8e

    const-string v2, "KEYCODE_F12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 801
    const/16 v1, 0x8f

    const-string v2, "KEYCODE_NUM_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 802
    const/16 v1, 0x90

    const-string v2, "KEYCODE_NUMPAD_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 803
    const/16 v1, 0x91

    const-string v2, "KEYCODE_NUMPAD_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 804
    const/16 v1, 0x92

    const-string v2, "KEYCODE_NUMPAD_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 805
    const/16 v1, 0x93

    const-string v2, "KEYCODE_NUMPAD_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 806
    const/16 v1, 0x94

    const-string v2, "KEYCODE_NUMPAD_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 807
    const/16 v1, 0x95

    const-string v2, "KEYCODE_NUMPAD_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 808
    const/16 v1, 0x96

    const-string v2, "KEYCODE_NUMPAD_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 809
    const/16 v1, 0x97

    const-string v2, "KEYCODE_NUMPAD_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 810
    const/16 v1, 0x98

    const-string v2, "KEYCODE_NUMPAD_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 811
    const/16 v1, 0x99

    const-string v2, "KEYCODE_NUMPAD_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 812
    const/16 v1, 0x9a

    const-string v2, "KEYCODE_NUMPAD_DIVIDE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 813
    const/16 v1, 0x9b

    const-string v2, "KEYCODE_NUMPAD_MULTIPLY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 814
    const/16 v1, 0x9c

    const-string v2, "KEYCODE_NUMPAD_SUBTRACT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 815
    const/16 v1, 0x9d

    const-string v2, "KEYCODE_NUMPAD_ADD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 816
    const/16 v1, 0x9e

    const-string v2, "KEYCODE_NUMPAD_DOT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 817
    const/16 v1, 0x9f

    const-string v2, "KEYCODE_NUMPAD_COMMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 818
    const/16 v1, 0xa0

    const-string v2, "KEYCODE_NUMPAD_ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 819
    const/16 v1, 0xa1

    const-string v2, "KEYCODE_NUMPAD_EQUALS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 820
    const/16 v1, 0xa2

    const-string v2, "KEYCODE_NUMPAD_LEFT_PAREN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 821
    const/16 v1, 0xa3

    const-string v2, "KEYCODE_NUMPAD_RIGHT_PAREN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 822
    const/16 v1, 0xa4

    const-string v2, "KEYCODE_VOLUME_MUTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 823
    const/16 v1, 0xa5

    const-string v2, "KEYCODE_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 824
    const/16 v1, 0xa6

    const-string v2, "KEYCODE_CHANNEL_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 825
    const/16 v1, 0xa7

    const-string v2, "KEYCODE_CHANNEL_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 826
    const/16 v1, 0xa8

    const-string v2, "KEYCODE_ZOOM_IN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 827
    const/16 v1, 0xa9

    const-string v2, "KEYCODE_ZOOM_OUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 828
    const/16 v1, 0xaa

    const-string v2, "KEYCODE_TV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 829
    const/16 v1, 0xab

    const-string v2, "KEYCODE_WINDOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 830
    const/16 v1, 0xac

    const-string v2, "KEYCODE_GUIDE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 831
    const/16 v1, 0xad

    const-string v2, "KEYCODE_DVR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 832
    const/16 v1, 0xae

    const-string v2, "KEYCODE_BOOKMARK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 833
    const/16 v1, 0xaf

    const-string v2, "KEYCODE_CAPTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 834
    const/16 v1, 0xb0

    const-string v2, "KEYCODE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 835
    const/16 v1, 0xb1

    const-string v2, "KEYCODE_TV_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 836
    const/16 v1, 0xb2

    const-string v2, "KEYCODE_TV_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 837
    const/16 v1, 0xb4

    const-string v2, "KEYCODE_STB_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 838
    const/16 v1, 0xb3

    const-string v2, "KEYCODE_STB_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 839
    const/16 v1, 0xb5

    const-string v2, "KEYCODE_AVR_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 840
    const/16 v1, 0xb6

    const-string v2, "KEYCODE_AVR_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 841
    const/16 v1, 0xb7

    const-string v2, "KEYCODE_PROG_RED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 842
    const/16 v1, 0xb8

    const-string v2, "KEYCODE_PROG_GREEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 843
    const/16 v1, 0xb9

    const-string v2, "KEYCODE_PROG_YELLOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 844
    const/16 v1, 0xba

    const-string v2, "KEYCODE_PROG_BLUE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 845
    const/16 v1, 0xbb

    const-string v2, "KEYCODE_APP_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 846
    const/16 v1, 0xbc

    const-string v2, "KEYCODE_BUTTON_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 847
    const/16 v1, 0xbd

    const-string v2, "KEYCODE_BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 848
    const/16 v1, 0xbe

    const-string v2, "KEYCODE_BUTTON_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 849
    const/16 v1, 0xbf

    const-string v2, "KEYCODE_BUTTON_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 850
    const/16 v1, 0xc0

    const-string v2, "KEYCODE_BUTTON_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 851
    const/16 v1, 0xc1

    const-string v2, "KEYCODE_BUTTON_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 852
    const/16 v1, 0xc2

    const-string v2, "KEYCODE_BUTTON_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 853
    const/16 v1, 0xc3

    const-string v2, "KEYCODE_BUTTON_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 854
    const/16 v1, 0xc4

    const-string v2, "KEYCODE_BUTTON_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 855
    const/16 v1, 0xc5

    const-string v2, "KEYCODE_BUTTON_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 856
    const/16 v1, 0xc6

    const-string v2, "KEYCODE_BUTTON_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 857
    const/16 v1, 0xc7

    const-string v2, "KEYCODE_BUTTON_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 858
    const/16 v1, 0xc8

    const-string v2, "KEYCODE_BUTTON_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 859
    const/16 v1, 0xc9

    const-string v2, "KEYCODE_BUTTON_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 860
    const/16 v1, 0xca

    const-string v2, "KEYCODE_BUTTON_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 861
    const/16 v1, 0xcb

    const-string v2, "KEYCODE_BUTTON_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 862
    const/16 v1, 0xcc

    const-string v2, "KEYCODE_LANGUAGE_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 863
    const/16 v1, 0xcd

    const-string v2, "KEYCODE_MANNER_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 864
    const/16 v1, 0xce

    const-string v2, "KEYCODE_3D_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 865
    const/16 v1, 0xcf

    const-string v2, "KEYCODE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 866
    const/16 v1, 0xd0

    const-string v2, "KEYCODE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 867
    const/16 v1, 0xd1

    const-string v2, "KEYCODE_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 868
    const/16 v1, 0xd2

    const-string v2, "KEYCODE_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 869
    const/16 v1, 0xd3

    const-string v2, "KEYCODE_ZENKAKU_HANKAKU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 870
    const/16 v1, 0xd4

    const-string v2, "KEYCODE_EISU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 871
    const/16 v1, 0xd5

    const-string v2, "KEYCODE_MUHENKAN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 872
    const/16 v1, 0xd6

    const-string v2, "KEYCODE_HENKAN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 873
    const/16 v1, 0xd7

    const-string v2, "KEYCODE_KATAKANA_HIRAGANA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 874
    const/16 v1, 0xd8

    const-string v2, "KEYCODE_YEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 875
    const/16 v1, 0xd9

    const-string v2, "KEYCODE_RO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 876
    const/16 v1, 0xda

    const-string v2, "KEYCODE_KANA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 877
    const/16 v1, 0xdb

    const-string v2, "KEYCODE_ASSIST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 878
    const/16 v1, 0xdc

    const-string v2, "KEYCODE_BRIGHTNESS_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 879
    const/16 v1, 0xdd

    const-string v2, "KEYCODE_BRIGHTNESS_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 880
    const/16 v1, 0xde

    const-string v2, "KEYCODE_MEDIA_AUDIO_TRACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 881
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 1648
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2619
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2635
    iget v4, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v4, :pswitch_data_0

    move v3, v2

    .line 2685
    :cond_0
    :goto_0
    return v3

    .line 2637
    :pswitch_0
    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2640
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 2641
    .local v3, "res":Z
    if-eqz p2, :cond_0

    .line 2642
    if-eqz v3, :cond_1

    iget v4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 2644
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 2645
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2647
    :try_start_0
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2649
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    const/4 v3, 0x1

    goto :goto_0

    .line 2661
    .end local v3    # "res":Z
    :pswitch_1
    if-eqz p2, :cond_2

    .line 2662
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2664
    :cond_2
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 2666
    :pswitch_2
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2667
    .local v1, "count":I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2668
    .local v0, "code":I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2671
    if-eqz v0, :cond_4

    .line 2672
    iput v2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2673
    iput v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2674
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2675
    .local v2, "handled":Z
    if-eqz v2, :cond_3

    .line 2676
    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2677
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2679
    :cond_3
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2680
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    move v3, v2

    .line 2681
    goto :goto_0

    .end local v2    # "handled":Z
    :cond_4
    move v3, v2

    .line 2683
    goto :goto_0

    .line 2652
    .end local v0    # "code":I
    .end local v1    # "count":I
    .restart local v3    # "res":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 2326
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 1856
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getDisplayLabel()C
    .locals 2

    .prologue
    .line 2488
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .prologue
    .line 2422
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .locals 2

    .prologue
    .line 2434
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 4

    .prologue
    .line 2453
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 1935
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .prologue
    .line 2478
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .locals 1

    .prologue
    .line 2372
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2550
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2464
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 2565
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .prologue
    .line 2578
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 1906
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .locals 2

    .prologue
    .line 1926
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .locals 2

    .prologue
    .line 2602
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .prologue
    .line 2407
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .locals 1

    .prologue
    .line 2395
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 1862
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .locals 1

    .prologue
    .line 2511
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 2
    .param p1, "metaState"    # I

    .prologue
    .line 2535
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasDefaultAction()Z
    .locals 1

    .prologue
    .line 1794
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_hasDefaultAction(I)Z

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .locals 1
    .param p1, "modifiers"    # I

    .prologue
    .line 2204
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .locals 1

    .prologue
    .line 2173
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .locals 1

    .prologue
    .line 2217
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCapsLockOn()Z
    .locals 2

    .prologue
    .line 2292
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCtrlPressed()Z
    .locals 1

    .prologue
    .line 2255
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1779
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFunctionPressed()Z
    .locals 1

    .prologue
    .line 2280
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLongPress()Z
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMetaPressed()Z
    .locals 2

    .prologue
    .line 2268
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNumLockOn()Z
    .locals 2

    .prologue
    .line 2304
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrintingKey()Z
    .locals 2

    .prologue
    .line 2611
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .locals 2

    .prologue
    .line 2316
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShiftPressed()Z
    .locals 1

    .prologue
    .line 2230
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSymPressed()Z
    .locals 1

    .prologue
    .line 2242
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSystem()Z
    .locals 1

    .prologue
    .line 1789
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .prologue
    .line 1760
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTracking()Z
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 1660
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1663
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1664
    :try_start_0
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1665
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 1666
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 1667
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1669
    :cond_0
    monitor-exit v1

    .line 1670
    return-void

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .locals 0

    .prologue
    .line 1676
    return-void
.end method

.method public final setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 1868
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1869
    return-void
.end method

.method public final setTainted(Z)V
    .locals 2
    .param p1, "tainted"    # Z

    .prologue
    .line 1766
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1767
    return-void

    .line 1766
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public final startTracking()V
    .locals 2

    .prologue
    .line 2345
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2346
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2783
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2786
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2787
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    :cond_0
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2792
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2793
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2794
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2795
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2930
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2932
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2934
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2935
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2936
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2938
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2941
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2942
    return-void
.end method
