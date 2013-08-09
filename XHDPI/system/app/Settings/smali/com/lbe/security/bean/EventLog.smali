.class public Lcom/lbe/security/bean/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/bean/EventLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private content:Ljava/lang/String;

.field private id:I

.field private pkg:I

.field private timestamp:J

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/lbe/security/bean/EventLog$1;

    invoke-direct {v0}, Lcom/lbe/security/bean/EventLog$1;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/EventLog;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/lbe/security/bean/EventLog;->id:I

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/lbe/security/bean/EventLog;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lbe/security/bean/EventLog;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput p1, p0, Lcom/lbe/security/bean/EventLog;->id:I

    return-void
.end method

.method static synthetic access$2(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/lbe/security/bean/EventLog;->pkg:I

    return-void
.end method

.method static synthetic access$3(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/lbe/security/bean/EventLog;->type:I

    return-void
.end method

.method static synthetic access$4(Lcom/lbe/security/bean/EventLog;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lbe/security/bean/EventLog;->timestamp:J

    return-void
.end method

.method static synthetic access$5(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lbe/security/bean/EventLog;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/lbe/security/bean/EventLog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lbe/security/bean/EventLog;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/lbe/security/bean/EventLog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/lbe/security/bean/EventLog;->action:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->action:I

    return v0
.end method

.method public getPkg()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->pkg:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lbe/security/bean/EventLog;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->pkg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-wide v0, p0, Lcom/lbe/security/bean/EventLog;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lbe/security/bean/EventLog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/lbe/security/bean/EventLog;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
