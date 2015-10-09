.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredName;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredName"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/name"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "data1"

.field public static final FAMILY_NAME:Ljava/lang/String; = "data3"

.field public static final FULL_NAME_STYLE:Ljava/lang/String; = "data10"

.field public static final GIVEN_NAME:Ljava/lang/String; = "data2"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "data5"

.field public static final PHONETIC_FAMILY_NAME:Ljava/lang/String; = "data9"

.field public static final PHONETIC_GIVEN_NAME:Ljava/lang/String; = "data7"

.field public static final PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "data8"

.field public static final PHONETIC_NAME_STYLE:Ljava/lang/String; = "data11"

.field public static final PREFIX:Ljava/lang/String; = "data4"

.field public static final SUFFIX:Ljava/lang/String; = "data6"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
