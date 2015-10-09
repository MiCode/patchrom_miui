.class Landroid/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DigitalClock;


# direct methods
.method public constructor <init>(Landroid/widget/DigitalClock;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    # invokes: Landroid/widget/DigitalClock;->setFormat()V
    invoke-static {v0}, Landroid/widget/DigitalClock;->access$300(Landroid/widget/DigitalClock;)V

    .line 115
    return-void
.end method
