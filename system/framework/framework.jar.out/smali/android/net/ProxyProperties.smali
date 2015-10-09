.class public Landroid/net/ProxyProperties;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Ljava/lang/String;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Landroid/net/ProxyProperties$1;

    invoke-direct {v0}, Landroid/net/ProxyProperties$1;-><init>()V

    sput-object v0, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyProperties;)V
    .locals 1
    .param p1, "source"    # Landroid/net/ProxyProperties;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 78
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 53
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pacFileUrl"    # Ljava/lang/String;
    .param p2, "localProxyPort"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 60
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 61
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 46
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 47
    invoke-direct {p0, p3}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 67
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 68
    iput-object p3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/ProxyProperties$1;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 7
    .param p1, "exclusionList"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 113
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 124
    :cond_0
    return-void

    .line 115
    :cond_1
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "splitExclusionList":[Ljava/lang/String;
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 118
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "s":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_2
    iget-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    aput-object v1, v3, v4

    .line 121
    iget-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    instance-of v3, p1, Landroid/net/ProxyProperties;

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 188
    check-cast v0, Landroid/net/ProxyProperties;

    .line 191
    .local v0, "p":Landroid/net/ProxyProperties;
    iget-object v3, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    iget-object v3, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    iget v4, v0, Landroid/net/ProxyProperties;->mPort:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    :cond_4
    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :cond_5
    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 202
    :cond_6
    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 203
    :cond_7
    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    iget v4, v0, Landroid/net/ProxyProperties;->mPort:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 204
    goto :goto_0
.end method

.method public getExclusionList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPacFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 89
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyProperties;->mPort:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "urlDomain":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 134
    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 133
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public isValid()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-object v2, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    :goto_0
    return v1

    .line 145
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    move-object v4, v2

    :goto_1
    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    if-nez v2, :cond_2

    const-string v2, ""

    move-object v3, v2

    :goto_2
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_3
    invoke-static {v4, v3, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    move-object v4, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 154
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 155
    .local v1, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 157
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v4, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 158
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v2, "proxy":Ljava/net/Proxy;
    move-object v1, v2

    .line 162
    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "proxy":Ljava/net/Proxy;
    .restart local v1    # "proxy":Ljava/net/Proxy;
    :cond_0
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 169
    const-string v1, "PAC Script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_1
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_2
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 232
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 240
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    :goto_1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
