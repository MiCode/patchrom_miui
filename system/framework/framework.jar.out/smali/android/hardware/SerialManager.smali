.class public Landroid/hardware/SerialManager;
.super Ljava/lang/Object;
.source "SerialManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/ISerialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISerialManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/hardware/SerialManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    .line 46
    return-void
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v1}, Landroid/hardware/ISerialManager;->getSerialPorts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SerialManager"

    const-string v2, "RemoteException in getSerialPorts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v3, p1}, Landroid/hardware/ISerialManager;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 76
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 77
    new-instance v2, Landroid/hardware/SerialPort;

    invoke-direct {v2, p1}, Landroid/hardware/SerialPort;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "port":Landroid/hardware/SerialPort;
    invoke-virtual {v2, v1, p2}, Landroid/hardware/SerialPort;->open(Landroid/os/ParcelFileDescriptor;I)V

    .line 86
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "port":Landroid/hardware/SerialPort;
    :goto_0
    return-object v2

    .line 81
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open serial port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SerialManager"

    const-string v4, "exception in UsbManager.openDevice"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method
