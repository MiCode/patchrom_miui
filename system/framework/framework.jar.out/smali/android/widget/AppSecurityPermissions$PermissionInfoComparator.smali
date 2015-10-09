.class Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    .line 599
    return-void
.end method


# virtual methods
.method public final compare(Landroid/widget/AppSecurityPermissions$MyPermissionInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)I
    .locals 3
    .param p1, "a"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p2, "b"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .prologue
    .line 601
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 596
    check-cast p1, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;->compare(Landroid/widget/AppSecurityPermissions$MyPermissionInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)I

    move-result v0

    return v0
.end method
