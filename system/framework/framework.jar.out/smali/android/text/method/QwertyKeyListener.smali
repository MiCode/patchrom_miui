.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 431
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 434
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z
    .param p3, "fullKeyboard"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 46
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 47
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 48
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .param p0, "autoText"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 61
    .local v0, "off":I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 65
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 59
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .prologue
    .line 74
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 77
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 362
    sub-int v4, p3, p2

    .line 363
    .local v4, "len":I
    const/4 v1, 0x0

    .line 365
    .local v1, "changecase":Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 368
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "key":Ljava/lang/String;
    sub-int v8, p3, p2

    invoke-static {v3, v9, v8, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 370
    const/4 v1, 0x1

    .line 372
    if-nez v6, :cond_1

    move-object v5, v7

    .line 400
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 376
    :cond_1
    const/4 v0, 0x0

    .line 378
    .local v0, "caps":I
    if-eqz v1, :cond_3

    .line 379
    move v2, p2

    .local v2, "j":I
    :goto_1
    if-ge v2, p3, :cond_3

    .line 380
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 379
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v2    # "j":I
    :cond_3
    if-nez v0, :cond_4

    .line 388
    move-object v5, v6

    .line 396
    .local v5, "out":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-static {p1, p2, v5, v9, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    .line 398
    goto :goto_0

    .line 389
    .end local v5    # "out":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    .line 390
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_2

    .line 391
    .end local v5    # "out":Ljava/lang/String;
    :cond_5
    if-ne v0, v4, :cond_6

    .line 392
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_2

    .line 394
    .end local v5    # "out":Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_2
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 418
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 419
    .local v3, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 420
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 424
    .local v1, "len":I
    new-array v2, v1, [C

    .line 425
    .local v2, "orig":[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 427
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 429
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "c"    # C
    .param p4, "insert"    # Z
    .param p5, "count"    # I

    .prologue
    const/4 v6, 0x1

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 499
    .local v4, "set":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    .line 503
    :cond_0
    if-ne p5, v6, :cond_1

    .line 504
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    move v0, v6

    .line 508
    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 44
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    const/16 v34, 0x0

    .line 89
    .local v34, "pref":I
    if-eqz p1, :cond_0

    .line 90
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v34

    .line 94
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 95
    .local v17, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 97
    .local v21, "b":I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    .line 98
    .local v39, "selStart":I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 100
    .local v38, "selEnd":I
    if-ltz v39, :cond_1

    if-gez v38, :cond_2

    .line 101
    :cond_1
    const/16 v38, 0x0

    move/from16 v39, v38

    .line 102
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 106
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 107
    .local v20, "activeStart":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 111
    .local v19, "activeEnd":I
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    .line 113
    .local v29, "i":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    if-nez v5, :cond_4

    .line 114
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 115
    .local v10, "count":I
    if-lez v10, :cond_4

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    if-lez v39, :cond_4

    .line 116
    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 118
    .local v8, "c":C
    move/from16 v0, v29

    if-eq v8, v0, :cond_3

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_4

    if-eqz p1, :cond_4

    .line 119
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 121
    const/4 v5, 0x1

    .line 357
    .end local v8    # "c":C
    .end local v10    # "count":I
    :goto_0
    return v5

    .line 127
    :cond_4
    const v5, 0xef01

    move/from16 v0, v29

    if-ne v0, v5, :cond_6

    .line 128
    if-eqz p1, :cond_5

    .line 129
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 132
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 133
    const/4 v5, 0x1

    goto :goto_0

    .line 136
    :cond_6
    const v5, 0xef00

    move/from16 v0, v29

    if-ne v0, v5, :cond_9

    .line 139
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 140
    move/from16 v41, v38

    .line 143
    .local v41, "start":I
    :goto_1
    if-lez v41, :cond_8

    sub-int v5, v38, v41

    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    add-int/lit8 v5, v41, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_8

    .line 144
    add-int/lit8 v41, v41, -0x1

    goto :goto_1

    .line 147
    .end local v41    # "start":I
    :cond_7
    move/from16 v41, v39

    .line 150
    .restart local v41    # "start":I
    :cond_8
    const/16 v22, -0x1

    .line 152
    .local v22, "ch":I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 153
    .local v28, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 156
    .end local v28    # "hex":Ljava/lang/String;
    :goto_2
    if-ltz v22, :cond_12

    .line 157
    move/from16 v39, v41

    .line 158
    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 159
    move/from16 v29, v22

    .line 165
    .end local v22    # "ch":I
    .end local v41    # "start":I
    :cond_9
    :goto_3
    if-eqz v29, :cond_1c

    .line 166
    const/16 v25, 0x0

    .line 168
    .local v25, "dead":Z
    const/high16 v5, -0x80000000

    and-int v5, v5, v29

    if-eqz v5, :cond_a

    .line 169
    const/16 v25, 0x1

    .line 170
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 173
    :cond_a
    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    move/from16 v0, v19

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 174
    const/16 v37, 0x0

    .line 176
    .local v37, "replace":Z
    sub-int v5, v38, v39

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_b

    .line 177
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 178
    .local v18, "accent":C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 180
    .local v23, "composed":I
    if-eqz v23, :cond_b

    .line 181
    move/from16 v29, v23

    .line 182
    const/16 v37, 0x1

    .line 183
    const/16 v25, 0x0

    .line 187
    .end local v18    # "accent":C
    .end local v23    # "composed":I
    :cond_b
    if-nez v37, :cond_c

    .line 188
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 189
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 190
    move/from16 v39, v38

    .line 194
    .end local v37    # "replace":Z
    :cond_c
    and-int/lit8 v5, v34, 0x1

    if-eqz v5, :cond_d

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v5, v0, v1}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 197
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v42

    .line 198
    .local v42, "where":I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 200
    .local v27, "flags":I
    move/from16 v0, v42

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move/from16 v0, v29

    if-ne v5, v0, :cond_13

    .line 201
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 217
    .end local v27    # "flags":I
    .end local v42    # "where":I
    :cond_d
    :goto_4
    move/from16 v0, v39

    move/from16 v1, v38

    if-eq v0, v1, :cond_e

    .line 218
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 220
    :cond_e
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v39

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 223
    move/from16 v0, v29

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 225
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v32

    .line 226
    .local v32, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 228
    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_f

    .line 229
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 233
    if-eqz v25, :cond_f

    .line 234
    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 235
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 245
    and-int/lit8 v5, v34, 0x2

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_17

    const/16 v5, 0x20

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x9

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0xa

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2c

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2e

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x21

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3f

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    const/16 v5, 0x22

    move/from16 v0, v29

    if-eq v0, v5, :cond_10

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_17

    :cond_10
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v32

    if-eq v5, v0, :cond_17

    .line 253
    move/from16 v43, v32

    .local v43, "x":I
    :goto_5
    if-lez v43, :cond_11

    .line 254
    add-int/lit8 v5, v43, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 255
    .restart local v8    # "c":C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_15

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_15

    .line 260
    .end local v8    # "c":C
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v43

    move/from16 v3, v32

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v35

    .line 262
    .local v35, "rep":Ljava/lang/String;
    if-eqz v35, :cond_17

    .line 263
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 265
    .local v36, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, v36

    array-length v5, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_16

    .line 266
    aget-object v5, v36, v17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 265
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 161
    .end local v25    # "dead":Z
    .end local v32    # "oldStart":I
    .end local v35    # "rep":Ljava/lang/String;
    .end local v36    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43    # "x":I
    .restart local v22    # "ch":I
    .restart local v41    # "start":I
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 203
    .end local v22    # "ch":I
    .end local v41    # "start":I
    .restart local v25    # "dead":Z
    .restart local v27    # "flags":I
    .restart local v42    # "where":I
    :cond_13
    shl-int/lit8 v27, v29, 0x10

    .line 204
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 206
    if-nez v39, :cond_14

    .line 207
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v9, v27, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 210
    :cond_14
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v6, v39, -0x1

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 253
    .end local v27    # "flags":I
    .end local v42    # "where":I
    .restart local v8    # "c":C
    .restart local v32    # "oldStart":I
    .restart local v43    # "x":I
    :cond_15
    add-int/lit8 v43, v43, -0x1

    goto :goto_5

    .line 268
    .end local v8    # "c":C
    .restart local v35    # "rep":Ljava/lang/String;
    .restart local v36    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_16
    sub-int v5, v32, v43

    new-array v0, v5, [C

    move-object/from16 v33, v0

    .line 269
    .local v33, "orig":[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 271
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 273
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 279
    .end local v33    # "orig":[C
    .end local v35    # "rep":Ljava/lang/String;
    .end local v36    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43    # "x":I
    :cond_17
    and-int/lit8 v5, v34, 0x4

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1b

    .line 280
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 281
    add-int/lit8 v5, v38, -0x3

    if-ltz v5, :cond_1b

    .line 282
    add-int/lit8 v5, v38, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1b

    add-int/lit8 v5, v38, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1b

    .line 284
    add-int/lit8 v5, v38, -0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 286
    .restart local v8    # "c":C
    add-int/lit8 v30, v38, -0x3

    .local v30, "j":I
    :goto_7
    if-lez v30, :cond_19

    .line 287
    const/16 v5, 0x22

    if-eq v8, v5, :cond_18

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_19

    .line 289
    :cond_18
    add-int/lit8 v5, v30, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 286
    add-int/lit8 v30, v30, -0x1

    goto :goto_7

    .line 295
    :cond_19
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 296
    :cond_1a
    add-int/lit8 v5, v38, -0x2

    add-int/lit8 v6, v38, -0x1

    const-string v7, "."

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 302
    .end local v8    # "c":C
    .end local v30    # "j":I
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 303
    .end local v25    # "dead":Z
    .end local v32    # "oldStart":I
    :cond_1c
    const/16 v5, 0x43

    move/from16 v0, p3

    if-ne v0, v5, :cond_21

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_1d
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_21

    .line 308
    const/16 v24, 0x1

    .line 315
    .local v24, "consider":I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v39

    if-ne v5, v0, :cond_1e

    .line 316
    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1e

    .line 317
    const/16 v24, 0x2

    .line 320
    :cond_1e
    sub-int v5, v39, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 323
    .restart local v36    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v36

    array-length v5, v0

    if-lez v5, :cond_21

    .line 324
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 325
    .local v40, "st":I
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 326
    .local v26, "en":I
    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v36, v5

    # getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 328
    .local v31, "old":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 334
    move/from16 v0, v39

    move/from16 v1, v26

    if-lt v0, v1, :cond_20

    .line 335
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 337
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 339
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 340
    add-int/lit8 v5, v26, -0x1

    if-ltz v5, :cond_1f

    .line 341
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v6, v26, -0x1

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 347
    :goto_8
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 353
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 345
    :cond_1f
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    .line 349
    :cond_20
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 350
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 357
    .end local v24    # "consider":I
    .end local v26    # "en":I
    .end local v31    # "old":Ljava/lang/String;
    .end local v36    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v40    # "st":I
    :cond_21
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 154
    .restart local v22    # "ch":I
    .restart local v41    # "start":I
    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method
