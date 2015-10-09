.class public Landroid/content/pm/PackageParser$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field public final newPerms:[Ljava/lang/String;

.field public final rootPerm:Ljava/lang/String;

.field public final targetSdk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "rootPerm"    # Ljava/lang/String;
    .param p2, "newPerms"    # [Ljava/lang/String;
    .param p3, "targetSdk"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    .line 104
    iput p3, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    .line 105
    return-void
.end method
