.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .prologue
    .line 1950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1951
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 1952
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 1953
    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1959
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1960
    .local v0, "hasDecoded":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 1959
    .end local v0    # "hasDecoded":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1960
    .restart local v0    # "hasDecoded":Z
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_1
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1965
    iget-object v4, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_0

    move v1, v2

    .line 1968
    .local v1, "hasEncoded":Z
    :goto_0
    iget-object v4, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_1

    move v0, v2

    .line 1970
    .local v0, "hasDecoded":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1971
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1973
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1983
    :goto_2
    return-void

    .end local v0    # "hasDecoded":Z
    .end local v1    # "hasEncoded":Z
    :cond_0
    move v1, v3

    .line 1965
    goto :goto_0

    .restart local v1    # "hasEncoded":Z
    :cond_1
    move v0, v3

    .line 1968
    goto :goto_1

    .line 1974
    .restart local v0    # "hasDecoded":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 1975
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 1977
    :cond_3
    if-eqz v0, :cond_4

    .line 1978
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1979
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 1981
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither encoded nor decoded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
