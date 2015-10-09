.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
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
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6441
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6445
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6444
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 6445
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6413
    packed-switch p0, :pswitch_data_0

    .line 6430
    sget v0, Lcom/android/internal/R$string;->orgTypeCustom:I

    :goto_0
    return v0

    .line 6414
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->relationTypeAssistant:I

    goto :goto_0

    .line 6415
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->relationTypeBrother:I

    goto :goto_0

    .line 6416
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->relationTypeChild:I

    goto :goto_0

    .line 6418
    :pswitch_3
    sget v0, Lcom/android/internal/R$string;->relationTypeDomesticPartner:I

    goto :goto_0

    .line 6419
    :pswitch_4
    sget v0, Lcom/android/internal/R$string;->relationTypeFather:I

    goto :goto_0

    .line 6420
    :pswitch_5
    sget v0, Lcom/android/internal/R$string;->relationTypeFriend:I

    goto :goto_0

    .line 6421
    :pswitch_6
    sget v0, Lcom/android/internal/R$string;->relationTypeManager:I

    goto :goto_0

    .line 6422
    :pswitch_7
    sget v0, Lcom/android/internal/R$string;->relationTypeMother:I

    goto :goto_0

    .line 6423
    :pswitch_8
    sget v0, Lcom/android/internal/R$string;->relationTypeParent:I

    goto :goto_0

    .line 6424
    :pswitch_9
    sget v0, Lcom/android/internal/R$string;->relationTypePartner:I

    goto :goto_0

    .line 6426
    :pswitch_a
    sget v0, Lcom/android/internal/R$string;->relationTypeReferredBy:I

    goto :goto_0

    .line 6427
    :pswitch_b
    sget v0, Lcom/android/internal/R$string;->relationTypeRelative:I

    goto :goto_0

    .line 6428
    :pswitch_c
    sget v0, Lcom/android/internal/R$string;->relationTypeSister:I

    goto :goto_0

    .line 6429
    :pswitch_d
    sget v0, Lcom/android/internal/R$string;->relationTypeSpouse:I

    goto :goto_0

    .line 6413
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
    .end packed-switch
.end method
