.class public final Landroid/provider/ContactsContract$PinnedPositions;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinnedPositions"
.end annotation


# static fields
.field public static final DEMOTED:I = -0x1

.field public static final STAR_WHEN_PINNING:Ljava/lang/String; = "star_when_pinning"

.field public static final UNDEMOTE:Ljava/lang/String; = "undemote"

.field public static final UNPINNED:I = 0x7fffffff

.field public static final UPDATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7791
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pinned_position_update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$PinnedPositions;->UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
