.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DateKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    .line 47
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Landroid/text/method/DateKeyListener;

    invoke-direct {v0}, Landroid/text/method/DateKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    .line 47
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x14

    return v0
.end method
