.class public Landroid/widget/DialerFilter;
.super Landroid/widget/RelativeLayout;
.source "DialerFilter.java"


# static fields
.field public static final DIGITS_AND_LETTERS:I = 0x1

.field public static final DIGITS_AND_LETTERS_NO_DIGITS:I = 0x2

.field public static final DIGITS_AND_LETTERS_NO_LETTERS:I = 0x3

.field public static final DIGITS_ONLY:I = 0x4

.field public static final LETTERS_ONLY:I = 0x5


# instance fields
.field mDigits:Landroid/widget/EditText;

.field mHint:Landroid/widget/EditText;

.field mIcon:Landroid/widget/ImageView;

.field mInputFilters:[Landroid/text/InputFilter;

.field private mIsQwerty:Z

.field mLetters:Landroid/widget/EditText;

.field mMode:I

.field mPrimary:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private makeDigitsPrimary()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method private makeLettersPrimary()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method private swapPrimaryAndHint(Z)V
    .locals 6
    .param p1, "makeLettersPrimary"    # Z

    .prologue
    .line 269
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 270
    .local v3, "lettersText":Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 271
    .local v1, "digitsText":Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 272
    .local v2, "lettersInput":Landroid/text/method/KeyListener;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 274
    .local v0, "digitsInput":Landroid/text/method/KeyListener;
    if-eqz p1, :cond_0

    .line 275
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 276
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 282
    :goto_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 283
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 285
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 287
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 288
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 293
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 294
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 295
    return-void

    .line 278
    :cond_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 279
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 323
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 326
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 348
    .local v0, "text":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 350
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 354
    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_0
.end method

.method public getDigits()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFilterText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getLetters()Ljava/lang/CharSequence;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getDigits()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getLetters()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    return v0
.end method

.method public isQwertyKeyboard()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    .line 55
    sget v0, Lcom/android/internal/R$id;->hint:I

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialerFilter must have a child EditText named hint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 61
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 63
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 67
    sget v0, Lcom/android/internal/R$id;->primary:I

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialerFilter must have a child EditText named primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 73
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 79
    sget v0, Lcom/android/internal/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setFocusable(Z)V

    .line 85
    iput-boolean v2, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    .line 86
    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 87
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 96
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :cond_0
    return-void

    .line 97
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "handled":Z
    sparse-switch p1, :sswitch_data_0

    .line 154
    iget v4, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v1, :cond_1

    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 198
    :cond_1
    return v3

    .line 120
    :sswitch_1
    iget v4, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 123
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 124
    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 128
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 129
    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 135
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 136
    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 138
    :cond_2
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 139
    goto :goto_0

    .line 142
    :pswitch_3
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 143
    goto :goto_0

    .line 146
    :pswitch_4
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 156
    :pswitch_5
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 160
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 162
    const/4 v1, 0x1

    .line 163
    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    .line 172
    .local v2, "isPrint":Z
    if-nez v2, :cond_4

    const/16 v4, 0x3e

    if-eq p1, v4, :cond_4

    const/16 v4, 0x3d

    if-ne p1, v4, :cond_0

    .line 174
    :cond_4
    sget-object v4, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 175
    .local v0, "c":C
    if-eqz v0, :cond_5

    .line 176
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    and-int/2addr v1, v4

    goto/16 :goto_0

    .line 178
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/DialerFilter;->setMode(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "c":C
    .end local v2    # "isPrint":Z
    :pswitch_6
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 186
    goto/16 :goto_0

    .line 190
    :pswitch_7
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 205
    .local v0, "a":Z
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 206
    .local v1, "b":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onModeChange(II)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    .prologue
    .line 396
    return-void
.end method

.method public removeFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 383
    iget v1, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 384
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 388
    .local v0, "text":Landroid/text/Spannable;
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 389
    return-void

    .line 386
    .end local v0    # "text":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .restart local v0    # "text":Landroid/text/Spannable;
    goto :goto_0
.end method

.method public setDigitsWatcher(Landroid/text/TextWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 368
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 369
    check-cast v0, Landroid/text/Spannable;

    .line 370
    .local v0, "span":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 371
    return-void
.end method

.method public setFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setLettersWatcher(Landroid/text/TextWatcher;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setDigitsWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public setLettersWatcher(Landroid/text/TextWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 362
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 363
    check-cast v0, Landroid/text/Spannable;

    .line 364
    .local v0, "span":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 365
    return-void
.end method

.method public setMode(I)V
    .locals 5
    .param p1, "newMode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 252
    .local v0, "oldMode":I
    iput p1, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 253
    invoke-virtual {p0, v0, p1}, Landroid/widget/DialerFilter;->onModeChange(II)V

    .line 254
    return-void

    .line 221
    .end local v0    # "oldMode":I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 222
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 228
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 234
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 240
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 246
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
