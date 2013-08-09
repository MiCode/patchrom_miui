.class public Lcom/lbe/security/service/privacy/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/service/privacy/EventFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Ljava/lang/Integer;

.field public pkgId:[I

.field public timestart:Ljava/lang/Long;

.field public timestop:Ljava/lang/Long;

.field public type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/lbe/security/service/privacy/EventFilter$1;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/EventFilter$1;-><init>()V

    sput-object v0, Lcom/lbe/security/service/privacy/EventFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, -0x1

    .line 73
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->pkgId:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->type:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 84
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    :goto_2
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
