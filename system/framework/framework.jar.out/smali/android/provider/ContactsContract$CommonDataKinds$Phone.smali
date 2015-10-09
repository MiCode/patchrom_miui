.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final NUMBER:Ljava/lang/String; = "data1"

.field public static final SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final TYPE_ASSISTANT:I = 0x13

.field public static final TYPE_CALLBACK:I = 0x8

.field public static final TYPE_CAR:I = 0x9

.field public static final TYPE_COMPANY_MAIN:I = 0xa

.field public static final TYPE_FAX_HOME:I = 0x5

.field public static final TYPE_FAX_WORK:I = 0x4

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_ISDN:I = 0xb

.field public static final TYPE_MAIN:I = 0xc

.field public static final TYPE_MMS:I = 0x14

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_OTHER_FAX:I = 0xd

.field public static final TYPE_PAGER:I = 0x6

.field public static final TYPE_RADIO:I = 0xe

.field public static final TYPE_TELEX:I = 0xf

.field public static final TYPE_TTY_TDD:I = 0x10

.field public static final TYPE_WORK:I = 0x3

.field public static final TYPE_WORK_MOBILE:I = 0x11

.field public static final TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5493
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 5502
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "labelArray"    # [Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5562
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 5612
    if-eqz p1, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5616
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 5615
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    .line 5616
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 5580
    packed-switch p0, :pswitch_data_0

    .line 5601
    sget v0, Lcom/android/internal/R$string;->phoneTypeCustom:I

    :goto_0
    return v0

    .line 5581
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->phoneTypeHome:I

    goto :goto_0

    .line 5582
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->phoneTypeMobile:I

    goto :goto_0

    .line 5583
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->phoneTypeWork:I

    goto :goto_0

    .line 5584
    :pswitch_3
    sget v0, Lcom/android/internal/R$string;->phoneTypeFaxWork:I

    goto :goto_0

    .line 5585
    :pswitch_4
    sget v0, Lcom/android/internal/R$string;->phoneTypeFaxHome:I

    goto :goto_0

    .line 5586
    :pswitch_5
    sget v0, Lcom/android/internal/R$string;->phoneTypePager:I

    goto :goto_0

    .line 5587
    :pswitch_6
    sget v0, Lcom/android/internal/R$string;->phoneTypeOther:I

    goto :goto_0

    .line 5588
    :pswitch_7
    sget v0, Lcom/android/internal/R$string;->phoneTypeCallback:I

    goto :goto_0

    .line 5589
    :pswitch_8
    sget v0, Lcom/android/internal/R$string;->phoneTypeCar:I

    goto :goto_0

    .line 5590
    :pswitch_9
    sget v0, Lcom/android/internal/R$string;->phoneTypeCompanyMain:I

    goto :goto_0

    .line 5591
    :pswitch_a
    sget v0, Lcom/android/internal/R$string;->phoneTypeIsdn:I

    goto :goto_0

    .line 5592
    :pswitch_b
    sget v0, Lcom/android/internal/R$string;->phoneTypeMain:I

    goto :goto_0

    .line 5593
    :pswitch_c
    sget v0, Lcom/android/internal/R$string;->phoneTypeOtherFax:I

    goto :goto_0

    .line 5594
    :pswitch_d
    sget v0, Lcom/android/internal/R$string;->phoneTypeRadio:I

    goto :goto_0

    .line 5595
    :pswitch_e
    sget v0, Lcom/android/internal/R$string;->phoneTypeTelex:I

    goto :goto_0

    .line 5596
    :pswitch_f
    sget v0, Lcom/android/internal/R$string;->phoneTypeTtyTdd:I

    goto :goto_0

    .line 5597
    :pswitch_10
    sget v0, Lcom/android/internal/R$string;->phoneTypeWorkMobile:I

    goto :goto_0

    .line 5598
    :pswitch_11
    sget v0, Lcom/android/internal/R$string;->phoneTypeWorkPager:I

    goto :goto_0

    .line 5599
    :pswitch_12
    sget v0, Lcom/android/internal/R$string;->phoneTypeAssistant:I

    goto :goto_0

    .line 5600
    :pswitch_13
    sget v0, Lcom/android/internal/R$string;->phoneTypeMms:I

    goto :goto_0

    .line 5580
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
    .end packed-switch
.end method
