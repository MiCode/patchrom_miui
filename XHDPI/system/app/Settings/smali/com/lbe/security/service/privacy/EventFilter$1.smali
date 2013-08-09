.class Lcom/lbe/security/service/privacy/EventFilter$1;
.super Ljava/lang/Object;
.source "EventFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/privacy/EventFilter;
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
        "Lcom/lbe/security/service/privacy/EventFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/privacy/EventFilter;
    .locals 6
    .parameter "source"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 48
    .local v0, filter:Lcom/lbe/security/service/privacy/EventFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->pkgId:[I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->type:[I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 51
    iget-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 52
    iput-object v3, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 54
    iget-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 55
    iput-object v3, v0, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    .line 57
    iget-object v1, v0, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 58
    iput-object v3, v0, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    .line 60
    :cond_2
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/EventFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/privacy/EventFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/service/privacy/EventFilter;
    .locals 1
    .parameter "size"

    .prologue
    .line 64
    new-array v0, p1, [Lcom/lbe/security/service/privacy/EventFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/EventFilter$1;->newArray(I)[Lcom/lbe/security/service/privacy/EventFilter;

    move-result-object v0

    return-object v0
.end method
