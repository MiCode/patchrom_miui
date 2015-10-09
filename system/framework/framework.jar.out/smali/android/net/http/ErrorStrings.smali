.class public Landroid/net/http/ErrorStrings;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(I)I
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 95
    const-string v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v0, Lcom/android/internal/R$string;->httpError:I

    :goto_0
    return v0

    .line 47
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->httpErrorOk:I

    goto :goto_0

    .line 50
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->httpError:I

    goto :goto_0

    .line 53
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->httpErrorLookup:I

    goto :goto_0

    .line 56
    :pswitch_3
    sget v0, Lcom/android/internal/R$string;->httpErrorUnsupportedAuthScheme:I

    goto :goto_0

    .line 59
    :pswitch_4
    sget v0, Lcom/android/internal/R$string;->httpErrorAuth:I

    goto :goto_0

    .line 62
    :pswitch_5
    sget v0, Lcom/android/internal/R$string;->httpErrorProxyAuth:I

    goto :goto_0

    .line 65
    :pswitch_6
    sget v0, Lcom/android/internal/R$string;->httpErrorConnect:I

    goto :goto_0

    .line 68
    :pswitch_7
    sget v0, Lcom/android/internal/R$string;->httpErrorIO:I

    goto :goto_0

    .line 71
    :pswitch_8
    sget v0, Lcom/android/internal/R$string;->httpErrorTimeout:I

    goto :goto_0

    .line 74
    :pswitch_9
    sget v0, Lcom/android/internal/R$string;->httpErrorRedirectLoop:I

    goto :goto_0

    .line 77
    :pswitch_a
    sget v0, Lcom/android/internal/R$string;->httpErrorUnsupportedScheme:I

    goto :goto_0

    .line 80
    :pswitch_b
    sget v0, Lcom/android/internal/R$string;->httpErrorFailedSslHandshake:I

    goto :goto_0

    .line 83
    :pswitch_c
    sget v0, Lcom/android/internal/R$string;->httpErrorBadUrl:I

    goto :goto_0

    .line 86
    :pswitch_d
    sget v0, Lcom/android/internal/R$string;->httpErrorFile:I

    goto :goto_0

    .line 89
    :pswitch_e
    sget v0, Lcom/android/internal/R$string;->httpErrorFileNotFound:I

    goto :goto_0

    .line 92
    :pswitch_f
    sget v0, Lcom/android/internal/R$string;->httpErrorTooManyRequests:I

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/net/http/ErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
