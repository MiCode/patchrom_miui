.class public abstract Landroid/nfc/cardemulation/HostApduService;
.super Landroid/app/Service;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostApduService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_DESELECTED:I = 0x1

.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final MSG_COMMAND_APDU:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_APDU:I = 0x1

.field public static final MSG_UNHANDLED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_apdu_service"

.field static final TAG:Ljava/lang/String; = "ApduService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 227
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/nfc/cardemulation/HostApduService$MsgHandler;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostApduService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostApduService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    .line 229
    return-void
.end method


# virtual methods
.method public final notifyUnhandled()V
    .locals 4

    .prologue
    .line 345
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, "unhandledMsg":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TAG"

    const-string v3, "Local messenger has died."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processCommandApdu([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponseApdu([B)V
    .locals 5
    .param p1, "responseApdu"    # [B

    .prologue
    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 312
    .local v2, "responseMsg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 314
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TAG"

    const-string v4, "Local messenger has died."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
