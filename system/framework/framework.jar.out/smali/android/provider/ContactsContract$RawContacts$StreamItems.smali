.class public final Landroid/provider/ContactsContract$RawContacts$StreamItems;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$StreamItemsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamItems"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "stream_items"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2827
    return-void
.end method
