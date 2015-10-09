.class public Landroid/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# instance fields
.field public response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/net/ParseException;->response:Ljava/lang/String;

    .line 28
    return-void
.end method
