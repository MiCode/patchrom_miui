.class public final Landroid/provider/ContactsContract$DeletedContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DeletedContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletedContacts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DAYS_KEPT:I = 0x1e

.field public static final DAYS_KEPT_MILLISECONDS:J = 0x9a7ec800L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2164
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "deleted_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    return-void
.end method
