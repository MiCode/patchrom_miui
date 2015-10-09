.class public abstract Landroid/view/InputFilter;
.super Landroid/view/IInputFilter$Stub;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputFilter$H;
    }
.end annotation


# static fields
.field private static final MSG_INPUT_EVENT:I = 0x3

.field private static final MSG_INSTALL:I = 0x1

.field private static final MSG_UNINSTALL:I = 0x2


# instance fields
.field private final mH:Landroid/view/InputFilter$H;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 126
    invoke-direct {p0}, Landroid/view/IInputFilter$Stub;-><init>()V

    .line 106
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const-string v2, "InputFilter#InboundInputEventConsistencyVerifier"

    invoke-direct {v0, p0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 111
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const-string v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    invoke-direct {v1, p0, v3, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_0
    iput-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 127
    new-instance v0, Landroid/view/InputFilter$H;

    invoke-direct {v0, p0, p1}, Landroid/view/InputFilter$H;-><init>(Landroid/view/InputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    .line 128
    return-void

    :cond_1
    move-object v0, v1

    .line 106
    goto :goto_0
.end method

.method static synthetic access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;
    .locals 0
    .param p0, "x0"    # Landroid/view/InputFilter;
    .param p1, "x1"    # Landroid/view/IInputFilterHost;

    .prologue
    .line 100
    iput-object p1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    return-object p1
.end method

.method static synthetic access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .param p0, "x0"    # Landroid/view/InputFilter;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .param p0, "x0"    # Landroid/view/InputFilter;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method


# virtual methods
.method public final filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 156
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public final install(Landroid/view/IInputFilterHost;)V
    .locals 2
    .param p1, "host"    # Landroid/view/IInputFilterHost;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 197
    return-void
.end method

.method public onInstalled()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onUninstalled()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send input event because the input filter is not installed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 177
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final uninstall()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method
