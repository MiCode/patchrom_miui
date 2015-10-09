.class public final Landroid/provider/ContactsContract$CommonDataKinds$Photo;
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
    name = "Photo"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/photo"

.field public static final PHOTO:Ljava/lang/String; = "data15"

.field public static final PHOTO_FILE_ID:Ljava/lang/String; = "data14"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
