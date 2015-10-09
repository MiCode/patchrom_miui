.class public final Landroid/provider/ContactsContract$Contacts$Entity;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$BaseSyncColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$DataColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;
.implements Landroid/provider/ContactsContract$StatusColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "entities"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    return-void
.end method
