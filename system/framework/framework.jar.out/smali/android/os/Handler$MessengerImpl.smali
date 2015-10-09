.class final Landroid/os/Handler$MessengerImpl;
.super Landroid/os/IMessenger$Stub;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessengerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Landroid/os/Handler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Landroid/os/Handler$1;

    .prologue
    .line 713
    invoke-direct {p0, p1}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 715
    iget-object v0, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void
.end method
