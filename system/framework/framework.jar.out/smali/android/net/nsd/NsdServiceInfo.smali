.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 0
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;
    .param p3, "tr"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    .line 48
    return-void
.end method

.method static synthetic access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/DnsSdTxtRecord;)Landroid/net/nsd/DnsSdTxtRecord;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/nsd/NsdServiceInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()Landroid/net/nsd/DnsSdTxtRecord;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    return-object v0
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "s"    # Ljava/net/InetAddress;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    .line 88
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 98
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTxtRecord(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1
    .param p1, "t"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    .line 77
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord;

    invoke-direct {v0, p1}, Landroid/net/nsd/DnsSdTxtRecord;-><init>(Landroid/net/nsd/DnsSdTxtRecord;)V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "txtRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 127
    :goto_0
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
