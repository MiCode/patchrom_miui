.class public Landroid/net/wifi/WpsResult;
.super Ljava/lang/Object;
.source "WpsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WpsResult$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WpsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pin:Ljava/lang/String;

.field public status:Landroid/net/wifi/WpsResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/net/wifi/WpsResult$1;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WpsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsResult$Status;)V
    .locals 1
    .param p1, "s"    # Landroid/net/wifi/WpsResult$Status;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsResult;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WpsResult;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p1, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 66
    iget-object v0, p1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    invoke-virtual {v2}, Landroid/net/wifi/WpsResult$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, " pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    invoke-virtual {v0}, Landroid/net/wifi/WpsResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
