.class public final Landroid/provider/ContactsContract$StreamItems$StreamItemPhotos;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$StreamItemPhotosColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$StreamItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamItemPhotos"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "photo"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/stream_item_photo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/stream_item_photo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3319
    return-void
.end method
