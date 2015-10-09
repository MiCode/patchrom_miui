.class Landroid/net/Uri$OpaqueUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpaqueUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x2


# instance fields
.field private volatile cachedString:Ljava/lang/String;

.field private final fragment:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private final ssp:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Landroid/net/Uri$Part;
    .param p3, "fragment"    # Landroid/net/Uri$Part;

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri$1;)V

    .line 934
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 834
    iput-object p1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 835
    iput-object p2, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    .line 836
    if-nez p3, :cond_0

    sget-object p3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .end local p3    # "fragment":Landroid/net/Uri$Part;
    :cond_0
    iput-object p3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/net/Uri$Part;
    .param p3, "x2"    # Landroid/net/Uri$Part;
    .param p4, "x3"    # Landroid/net/Uri$1;

    .prologue
    .line 824
    invoke-direct {p0, p1, p2, p3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 840
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 956
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 824
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 931
    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 938
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 939
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 940
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 952
    :goto_1
    return-object v2

    .line 938
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 943
    .restart local v0    # "cached":Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p0}, Landroid/net/Uri$OpaqueUri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v2}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 949
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v3}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 852
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    .line 855
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Part;->writeTo(Landroid/os/Parcel;)V

    .line 856
    return-void
.end method
