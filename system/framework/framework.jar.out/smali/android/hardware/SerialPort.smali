.class public Landroid/hardware/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mName:Ljava/lang/String;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_open(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_array([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_direct(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_send_break()V
.end method

.method private native native_write_array([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_write_direct(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 72
    :cond_0
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_close()V

    .line 73
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public open(Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_open(Ljava/io/FileDescriptor;I)V

    .line 61
    iput-object p1, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 62
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/SerialPort;->native_read_direct(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SerialPort;->native_read_array([BI)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendBreak()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_send_break()V

    .line 125
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/hardware/SerialPort;->native_write_direct(Ljava/nio/ByteBuffer;I)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_write_array([BI)V

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
