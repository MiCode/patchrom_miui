.class Landroid/net/Uri$PathPart;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathPart"
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$PathPart;

.field static final NULL:Landroid/net/Uri$PathPart;


# instance fields
.field private pathSegments:Landroid/net/Uri$PathSegments;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2098
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, v1, v1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2101
    new-instance v0, Landroid/net/Uri$PathPart;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2104
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    return-void
.end method

.method static appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 2
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2191
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    return-object v1
.end method

.method static appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 5
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;
    .param p1, "newSegment"    # Ljava/lang/String;

    .prologue
    .line 2165
    if-nez p0, :cond_0

    .line 2167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 2187
    :goto_0
    return-object v3

    .line 2170
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 2172
    .local v1, "oldPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2173
    const-string v1, ""

    .line 2176
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2178
    .local v2, "oldPathLength":I
    if-nez v2, :cond_2

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, "newPath":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    goto :goto_0

    .line 2181
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_1

    .line 2184
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newPath":Ljava/lang/String;
    goto :goto_1
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2236
    if-nez p0, :cond_0

    .line 2237
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 2244
    :goto_0
    return-object v0

    .line 2240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2241
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    goto :goto_0

    .line 2244
    :cond_1
    new-instance v0, Landroid/net/Uri$PathPart;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "decoded"    # Ljava/lang/String;

    .prologue
    .line 2226
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 2217
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    return-object v0
.end method

.method static makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;
    .locals 8
    .param p0, "oldPart"    # Landroid/net/Uri$PathPart;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2253
    iget-object v6, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_1

    move v1, v0

    .line 2257
    .local v1, "encodedCached":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    .line 2259
    .local v4, "oldPath":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2275
    .end local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_0
    :goto_2
    return-object p0

    .end local v1    # "encodedCached":Z
    .end local v4    # "oldPath":Ljava/lang/String;
    .restart local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_1
    move v1, v5

    .line 2253
    goto :goto_0

    .line 2257
    .restart local v1    # "encodedCached":Z
    :cond_2
    iget-object v4, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    goto :goto_1

    .line 2265
    .restart local v4    # "oldPath":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2270
    .local v3, "newEncoded":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_5

    .line 2271
    .local v0, "decodedCached":Z
    :goto_4
    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2275
    .local v2, "newDecoded":Ljava/lang/String;
    :goto_5
    new-instance p0, Landroid/net/Uri$PathPart;

    .end local p0    # "oldPart":Landroid/net/Uri$PathPart;
    invoke-direct {p0, v3, v2}, Landroid/net/Uri$PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2265
    .end local v0    # "decodedCached":Z
    .end local v2    # "newDecoded":Ljava/lang/String;
    .end local v3    # "newEncoded":Ljava/lang/String;
    .restart local p0    # "oldPart":Landroid/net/Uri$PathPart;
    :cond_4
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .restart local v3    # "newEncoded":Ljava/lang/String;
    :cond_5
    move v0, v5

    .line 2270
    goto :goto_4

    .line 2271
    .restart local v0    # "decodedCached":Z
    :cond_6
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2198
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2199
    .local v0, "representation":I
    packed-switch v0, :pswitch_data_0

    .line 2207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2201
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$PathPart;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    .line 2205
    :goto_0
    return-object v1

    .line 2203
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_0

    .line 2205
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v1

    goto :goto_0

    .line 2199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2109
    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2112
    .local v0, "hasEncoded":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 2109
    .end local v0    # "hasEncoded":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2112
    .restart local v0    # "hasEncoded":Z
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$PathPart;->decoded:Ljava/lang/String;

    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$PathPart;->encoded:Ljava/lang/String;

    goto :goto_1
.end method

.method getPathSegments()Landroid/net/Uri$PathSegments;
    .locals 6

    .prologue
    .line 2128
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    if-eqz v5, :cond_0

    .line 2129
    iget-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    .line 2157
    :goto_0
    return-object v5

    .line 2132
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v2

    .line 2133
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2134
    sget-object v5, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_0

    .line 2137
    :cond_1
    new-instance v4, Landroid/net/Uri$PathSegmentsBuilder;

    invoke-direct {v4}, Landroid/net/Uri$PathSegmentsBuilder;-><init>()V

    .line 2139
    .local v4, "segmentBuilder":Landroid/net/Uri$PathSegmentsBuilder;
    const/4 v3, 0x0

    .line 2141
    .local v3, "previous":I
    :goto_1
    const/16 v5, 0x2f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "current":I
    const/4 v5, -0x1

    if-le v0, v5, :cond_3

    .line 2144
    if-ge v3, v0, :cond_2

    .line 2145
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2147
    .local v1, "decodedSegment":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2149
    .end local v1    # "decodedSegment":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 2153
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 2154
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$PathSegmentsBuilder;->add(Ljava/lang/String;)V

    .line 2157
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$PathSegmentsBuilder;->build()Landroid/net/Uri$PathSegments;

    move-result-object v5

    iput-object v5, p0, Landroid/net/Uri$PathPart;->pathSegments:Landroid/net/Uri$PathSegments;

    goto :goto_0
.end method
