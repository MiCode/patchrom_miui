.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x3

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 6517
    if-nez p0, :cond_0

    .line 6518
    sget v0, Lcom/android/internal/R$string;->eventTypeOther:I

    .line 6525
    :goto_0
    return v0

    .line 6520
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6525
    sget v0, Lcom/android/internal/R$string;->eventTypeCustom:I

    goto :goto_0

    .line 6522
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->eventTypeAnniversary:I

    goto :goto_0

    .line 6523
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->eventTypeBirthday:I

    goto :goto_0

    .line 6524
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->eventTypeOther:I

    goto :goto_0

    .line 6520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
