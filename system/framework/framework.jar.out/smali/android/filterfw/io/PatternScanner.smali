.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "PatternScanner.java"


# instance fields
.field private mIgnorePattern:Ljava/util/regex/Pattern;

.field private mInput:Ljava/lang/String;

.field private mLineNo:I

.field private mOffset:I

.field private mStartOfLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 35
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "ignorePattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 39
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 41
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 42
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "tokenName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    return-object v0
.end method

.method public lineNo()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    return v0
.end method

.method public peek(Ljava/util/regex/Pattern;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 80
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 85
    :cond_0
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    return v1
.end method

.method public skip(Ljava/util/regex/Pattern;)V
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 93
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 99
    :cond_0
    return-void
.end method

.method public tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 46
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 51
    :cond_0
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 52
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v3, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 59
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 67
    :cond_2
    return-object v1
.end method

.method public unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tokenName"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iget v3, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' <- Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateLineCount(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 116
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 117
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 118
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 119
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method
