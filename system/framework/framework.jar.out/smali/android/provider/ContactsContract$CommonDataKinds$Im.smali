.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
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
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6142
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6146
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6145
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6146
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6121
    packed-switch p0, :pswitch_data_0

    .line 6131
    sget v0, Lcom/android/internal/R$string;->imProtocolCustom:I

    :goto_0
    return v0

    .line 6122
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->imProtocolAim:I

    goto :goto_0

    .line 6123
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->imProtocolMsn:I

    goto :goto_0

    .line 6124
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->imProtocolYahoo:I

    goto :goto_0

    .line 6125
    :pswitch_3
    sget v0, Lcom/android/internal/R$string;->imProtocolSkype:I

    goto :goto_0

    .line 6126
    :pswitch_4
    sget v0, Lcom/android/internal/R$string;->imProtocolQq:I

    goto :goto_0

    .line 6127
    :pswitch_5
    sget v0, Lcom/android/internal/R$string;->imProtocolGoogleTalk:I

    goto :goto_0

    .line 6128
    :pswitch_6
    sget v0, Lcom/android/internal/R$string;->imProtocolIcq:I

    goto :goto_0

    .line 6129
    :pswitch_7
    sget v0, Lcom/android/internal/R$string;->imProtocolJabber:I

    goto :goto_0

    .line 6130
    :pswitch_8
    sget v0, Lcom/android/internal/R$string;->imProtocolNetMeeting:I

    goto :goto_0

    .line 6121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6108
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6112
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 6111
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6112
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6093
    packed-switch p0, :pswitch_data_0

    .line 6097
    sget v0, Lcom/android/internal/R$string;->imTypeCustom:I

    :goto_0
    return v0

    .line 6094
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->imTypeHome:I

    goto :goto_0

    .line 6095
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->imTypeWork:I

    goto :goto_0

    .line 6096
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->imTypeOther:I

    goto :goto_0

    .line 6093
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
