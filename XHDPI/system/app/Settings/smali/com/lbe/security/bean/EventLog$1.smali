.class Lcom/lbe/security/bean/EventLog$1;
.super Ljava/lang/Object;
.source "EventLog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/bean/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lbe/security/bean/EventLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/bean/EventLog;
    .locals 3
    .parameter "source"

    .prologue
    .line 78
    new-instance v0, Lcom/lbe/security/bean/EventLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lbe/security/bean/EventLog;-><init>(Lcom/lbe/security/bean/EventLog;)V

    .line 79
    .local v0, log:Lcom/lbe/security/bean/EventLog;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/lbe/security/bean/EventLog;->id:I
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$1(Lcom/lbe/security/bean/EventLog;I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/lbe/security/bean/EventLog;->pkg:I
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$2(Lcom/lbe/security/bean/EventLog;I)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/lbe/security/bean/EventLog;->type:I
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$3(Lcom/lbe/security/bean/EventLog;I)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/lbe/security/bean/EventLog;->timestamp:J
    invoke-static {v0, v1, v2}, Lcom/lbe/security/bean/EventLog;->access$4(Lcom/lbe/security/bean/EventLog;J)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/lbe/security/bean/EventLog;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$5(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/lbe/security/bean/EventLog;->content:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$6(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/lbe/security/bean/EventLog;->action:I
    invoke-static {v0, v1}, Lcom/lbe/security/bean/EventLog;->access$7(Lcom/lbe/security/bean/EventLog;I)V

    .line 86
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/bean/EventLog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/bean/EventLog;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/bean/EventLog;
    .locals 1
    .parameter "size"

    .prologue
    .line 90
    new-array v0, p1, [Lcom/lbe/security/bean/EventLog;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/bean/EventLog$1;->newArray(I)[Lcom/lbe/security/bean/EventLog;

    move-result-object v0

    return-object v0
.end method
