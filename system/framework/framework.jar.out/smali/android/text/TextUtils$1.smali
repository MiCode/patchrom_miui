.class final Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .local v0, "kind":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "string":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 675
    const/4 v2, 0x0

    .line 788
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 678
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 682
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 685
    .local v1, "sp":Landroid/text/SpannableString;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    if-nez v0, :cond_2

    move-object v2, v1

    .line 788
    goto :goto_0

    .line 690
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 784
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bogus span encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 692
    :pswitch_0
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 696
    :pswitch_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 700
    :pswitch_2
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 704
    :pswitch_3
    new-instance v3, Landroid/text/style/ScaleXSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 708
    :pswitch_4
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 712
    :pswitch_5
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 716
    :pswitch_6
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 720
    :pswitch_7
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 724
    :pswitch_8
    new-instance v3, Landroid/text/style/QuoteSpan;

    invoke-direct {v3, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 728
    :pswitch_9
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    .line 732
    :pswitch_a
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 736
    :pswitch_b
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 740
    :pswitch_c
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 744
    :pswitch_d
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 748
    :pswitch_e
    new-instance v3, Landroid/text/style/SubscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 752
    :pswitch_f
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 756
    :pswitch_10
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 760
    :pswitch_11
    new-instance v3, Landroid/text/Annotation;

    invoke-direct {v3, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 764
    :pswitch_12
    new-instance v3, Landroid/text/style/SuggestionSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 768
    :pswitch_13
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 772
    :pswitch_14
    new-instance v3, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 776
    :pswitch_15
    new-instance v3, Landroid/text/style/EasyEditSpan;

    invoke-direct {v3, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 780
    :pswitch_16
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    # invokes: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 793
    new-array v0, p1, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
