.class Landroid/os/Broadcaster$Registration;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Broadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Registration"
.end annotation


# instance fields
.field next:Landroid/os/Broadcaster$Registration;

.field prev:Landroid/os/Broadcaster$Registration;

.field senderWhat:I

.field targetWhats:[I

.field targets:[Landroid/os/Handler;

.field final synthetic this$0:Landroid/os/Broadcaster;


# direct methods
.method private constructor <init>(Landroid/os/Broadcaster;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Landroid/os/Broadcaster$Registration;->this$0:Landroid/os/Broadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Broadcaster;
    .param p2, "x1"    # Landroid/os/Broadcaster$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;)V

    return-void
.end method
