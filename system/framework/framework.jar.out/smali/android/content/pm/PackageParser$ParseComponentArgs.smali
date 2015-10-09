.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final descriptionRes:I

.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_logoRes"    # I
    .param p7, "_sepProcesses"    # [Ljava/lang/String;
    .param p8, "_processRes"    # I
    .param p9, "_descriptionRes"    # I
    .param p10, "_enabledRes"    # I

    .prologue
    .line 196
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    .line 197
    iput-object p7, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 198
    iput p8, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 199
    iput p9, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 200
    iput p10, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 201
    return-void
.end method
