.class public final Landroid/view/inputmethod/InputBinding;
.super Ljava/lang/Object;
.source "InputBinding.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputBinding"


# instance fields
.field final mConnection:Landroid/view/inputmethod/InputConnection;

.field final mConnectionToken:Landroid/os/IBinder;

.field final mPid:I

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/view/inputmethod/InputBinding$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputBinding$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "connToken"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 62
    iput-object p2, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 63
    iput p3, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 64
    iput p4, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V
    .locals 1
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "binding"    # Landroid/view/inputmethod/InputBinding;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 76
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    .line 77
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getUid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    .line 78
    invoke-virtual {p2}, Landroid/view/inputmethod/InputBinding;->getPid()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public getConnectionToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBinding{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/view/inputmethod/InputBinding;->mConnectionToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/view/inputmethod/InputBinding;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
