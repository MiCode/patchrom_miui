.class public Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommaTokenizer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 251
    move v0, p2

    .line 252
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 254
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 255
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    .line 262
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 258
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 262
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 238
    move v0, p2

    .line 240
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 241
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_1
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 268
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 269
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 272
    :cond_0
    if-lez v6, :cond_1

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1

    .line 281
    .end local p1    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object p1

    .line 275
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 276
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, p1

    .line 277
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object p1, v4

    .line 279
    goto :goto_1

    .line 281
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
