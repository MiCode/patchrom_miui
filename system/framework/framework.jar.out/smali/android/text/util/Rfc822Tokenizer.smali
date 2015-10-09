.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x20

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 181
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 184
    .local v0, "c":C
    if-nez v0, :cond_2

    .line 185
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 193
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "c":C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 202
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 200
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v6, "name":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 51
    .local v4, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 53
    .local v3, "cursor":I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_13

    .line 54
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 56
    .local v1, "c":C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_1

    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 59
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 66
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 70
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_5
    const/16 v7, 0x22

    if-ne v1, v7, :cond_9

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    :goto_3
    if-ge v4, v3, :cond_0

    .line 82
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 84
    const/16 v7, 0x22

    if-ne v1, v7, :cond_6

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_8

    .line 88
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_7

    .line 89
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 93
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 97
    :cond_9
    const/16 v7, 0x28

    if-ne v1, v7, :cond_f

    .line 98
    const/4 v5, 0x1

    .line 99
    .local v5, "level":I
    add-int/lit8 v4, v4, 0x1

    .line 101
    :goto_4
    if-ge v4, v3, :cond_0

    if-lez v5, :cond_0

    .line 102
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 104
    const/16 v7, 0x29

    if-ne v1, v7, :cond_b

    .line 105
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 111
    :cond_b
    const/16 v7, 0x28

    if-ne v1, v7, :cond_c

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 115
    :cond_c
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_e

    .line 116
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_d

    .line 117
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_d
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 121
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 125
    .end local v5    # "level":I
    :cond_f
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_11

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 128
    :goto_5
    if-ge v4, v3, :cond_0

    .line 129
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 131
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_10

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 139
    :cond_11
    const/16 v7, 0x20

    if-ne v1, v7, :cond_12

    .line 140
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 143
    :cond_12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 148
    .end local v1    # "c":C
    :cond_13
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 151
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_14
    :goto_6
    return-void

    .line 154
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 155
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 243
    .local v2, "len":I
    move v1, p2

    .line 245
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 246
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 248
    .local v0, "c":C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 302
    .end local v0    # "c":C
    :cond_1
    return v1

    .line 250
    .restart local v0    # "c":C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 253
    :goto_1
    if-ge v1, v2, :cond_0

    .line 254
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 256
    if-ne v0, v5, :cond_3

    .line 257
    add-int/lit8 v1, v1, 0x1

    .line 258
    goto :goto_0

    .line 259
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 260
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 262
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :cond_5
    if-ne v0, v6, :cond_9

    .line 266
    const/4 v3, 0x1

    .line 267
    .local v3, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 269
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 270
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 272
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 273
    add-int/lit8 v3, v3, -0x1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_6
    if-ne v0, v6, :cond_7

    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 279
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 281
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    .end local v3    # "level":I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    :goto_3
    if-ge v1, v2, :cond_0

    .line 288
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 290
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    goto :goto_0

    .line 294
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 298
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "best":I
    const/4 v1, 0x0

    .line 219
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 220
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 222
    if-ge v1, p2, :cond_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 225
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_1
    if-ge v1, p2, :cond_0

    .line 230
    move v0, v1

    goto :goto_0

    .line 235
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
