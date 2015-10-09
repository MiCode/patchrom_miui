.class public final Landroid/provider/ContactsContract$CommonDataKinds$Identity;
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
    name = "Identity"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/identity"

.field public static final IDENTITY:Ljava/lang/String; = "data1"

.field public static final NAMESPACE:Ljava/lang/String; = "data2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
