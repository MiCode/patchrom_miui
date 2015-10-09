.class Landroid/renderscript/Font$FontFamily;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontFamily"
.end annotation


# instance fields
.field mBoldFileName:Ljava/lang/String;

.field mBoldItalicFileName:Ljava/lang/String;

.field mItalicFileName:Ljava/lang/String;

.field mNames:[Ljava/lang/String;

.field mNormalFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/renderscript/Font$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/renderscript/Font$1;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/renderscript/Font$FontFamily;-><init>()V

    return-void
.end method
