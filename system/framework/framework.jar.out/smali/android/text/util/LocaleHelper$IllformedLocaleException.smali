.class Landroid/text/util/LocaleHelper$IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IllformedLocaleException"
.end annotation


# instance fields
.field private final errorIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/text/util/LocaleHelper$IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/text/util/LocaleHelper$IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    .prologue
    .line 375
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 376
    iput p2, p0, Landroid/text/util/LocaleHelper$IllformedLocaleException;->errorIndex:I

    .line 377
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/text/util/LocaleHelper$IllformedLocaleException;->errorIndex:I

    return v0
.end method
