.class public Landroid/text/util/Rfc822Token;
.super Ljava/lang/Object;
.source "Rfc822Token.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 157
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 162
    .local v0, "c":C
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 163
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, "c":C
    if-eq v0, v5, :cond_0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 141
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 114
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 117
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_4

    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    .line 121
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/text/util/Rfc822Token;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    .end local v0    # "c":C
    .end local p0    # "name":Ljava/lang/String;
    :cond_3
    return-object p0

    .line 114
    .restart local v0    # "c":C
    .restart local p0    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p0, :cond_1

    .line 182
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 189
    instance-of v2, p1, Landroid/text/util/Rfc822Token;

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 192
    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 193
    .local v0, "other":Landroid/text/util/Rfc822Token;
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 173
    const/16 v0, 0x11

    .line 174
    .local v0, "result":I
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 175
    :cond_0
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 176
    :cond_1
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    :cond_2
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/util/Rfc822Token;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
