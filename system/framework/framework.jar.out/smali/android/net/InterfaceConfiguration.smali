.class public Landroid/net/InterfaceConfiguration;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/InterfaceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_DOWN:Ljava/lang/String; = "down"

.field private static final FLAG_UP:Ljava/lang/String; = "up"


# instance fields
.field private mAddr:Landroid/net/LinkAddress;

.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHwAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/net/InterfaceConfiguration$1;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$002(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/InterfaceConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)Landroid/net/LinkAddress;
    .locals 0
    .param p0, "x0"    # Landroid/net/InterfaceConfiguration;
    .param p1, "x1"    # Landroid/net/LinkAddress;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method private static validateFlag(Ljava/lang/String;)V
    .locals 3
    .param p0, "flag"    # Ljava/lang/String;

    .prologue
    .line 160
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method public getHardwareAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddress()Landroid/net/LinkAddress;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 108
    :try_start_0
    const-string/jumbo v6, "up"

    invoke-virtual {p0, v6}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v1, "b":B
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    .line 116
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    return v5

    .line 109
    .restart local v0    # "arr$":[B
    .restart local v1    # "b":B
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setHardwareAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "hwAddr"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setInterfaceDown()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public setInterfaceUp()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public setLinkAddress(Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "addr"    # Landroid/net/LinkAddress;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mHwAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " mAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    :goto_0
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "flag":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 137
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
