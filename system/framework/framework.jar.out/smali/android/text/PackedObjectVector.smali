.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "columns"    # I

    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 35
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 37
    iput v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 38
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 40
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private growBuffer()V
    .locals 7

    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 113
    .local v1, "newsize":I
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v3, v1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int v1, v3, v4

    .line 114
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v3, v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 116
    .local v2, "newvalues":[Ljava/lang/Object;
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 118
    .local v0, "after":I
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    mul-int/2addr v4, v5

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v5

    sub-int v5, v1, v0

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 122
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 123
    iput-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private moveRowGapTo(I)V
    .locals 8
    .param p1, "where"    # I

    .prologue
    .line 129
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-ne p1, v5, :cond_0

    .line 166
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-le p1, v5, :cond_2

    .line 134
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, p1

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v7, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 136
    .local v3, "moving":I
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int v1, v5, v6

    .local v1, "i":I
    :goto_1
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    if-ge v1, v5, :cond_4

    .line 138
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v5, v1, v5

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int v0, v5, v6

    .line 140
    .local v0, "destrow":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v5, :cond_1

    .line 142
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    .line 144
    .local v4, "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 136
    .end local v4    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "destrow":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "moving":I
    :cond_2
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int v3, v5, p1

    .line 152
    .restart local v3    # "moving":I
    add-int v5, p1, v3

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, p1, :cond_4

    .line 154
    sub-int v5, v1, p1

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v0, v5, v3

    .line 156
    .restart local v0    # "destrow":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v5, :cond_3

    .line 158
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    .line 160
    .restart local v4    # "val":Ljava/lang/Object;
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    .end local v4    # "val":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 165
    .end local v0    # "destrow":I
    .end local v2    # "j":I
    :cond_4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    goto :goto_0
.end method


# virtual methods
.method public deleteAt(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "count"    # I

    .prologue
    .line 85
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 87
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 88
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 90
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 95
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 171
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    if-ge v0, v3, :cond_3

    .line 173
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v1, v3, :cond_2

    .line 175
    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v2, v3, v4

    .line 177
    .local v2, "val":Ljava/lang/Object;
    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt v0, v3, :cond_0

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    .line 178
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v2    # "val":Ljava/lang/Object;
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " << \n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "j":I
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-----\n\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public getValue(II)Ljava/lang/Object;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 47
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 49
    :cond_0
    iget-object v1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aget-object v0, v1, v2

    .line 51
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public insertAt(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 68
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    .line 71
    :cond_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 72
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 74
    if-nez p2, :cond_1

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_2

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_2

    .line 79
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_2
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 58
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 60
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-object p3, v0, v1

    .line 61
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
