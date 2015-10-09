.class Landroid/os/ParcelFileDescriptor$Status;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# static fields
.field public static final DEAD:I = -0x2

.field public static final DETACHED:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final LEAKED:I = 0x3

.field public static final OK:I = 0x0

.field public static final SILENCE:I = -0x1


# instance fields
.field public final msg:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    .line 969
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput p1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    .line 973
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    .line 974
    return-void
.end method


# virtual methods
.method public asIOException()Ljava/io/IOException;
    .locals 3

    .prologue
    .line 977
    iget v0, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    packed-switch v0, :pswitch_data_0

    .line 989
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 979
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side is dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 983
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :pswitch_4
    new-instance v0, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;-><init>()V

    goto :goto_0

    .line 987
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side was leaked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
