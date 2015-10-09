.class public Landroid/content/SyncStats;
.super Ljava/lang/Object;
.source "SyncStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numAuthExceptions:J

.field public numConflictDetectedExceptions:J

.field public numDeletes:J

.field public numEntries:J

.field public numInserts:J

.field public numIoExceptions:J

.field public numParseExceptions:J

.field public numSkippedEntries:J

.field public numUpdates:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Landroid/content/SyncStats$1;

    invoke-direct {v0}, Landroid/content/SyncStats$1;-><init>()V

    sput-object v0, Landroid/content/SyncStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 98
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 99
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 100
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 101
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 102
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 103
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 104
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 105
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 118
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 143
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 144
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 145
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 146
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 147
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 148
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 149
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 150
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 151
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " stats ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-wide v1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    const-string v1, " numAuthExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    const-string v1, " numIoExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    iget-wide v1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    const-string v1, " numParseExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    :cond_2
    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_3

    .line 128
    const-string v1, " numConflictDetectedExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    :cond_3
    iget-wide v1, p0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    const-string v1, " numInserts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    :cond_4
    iget-wide v1, p0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    const-string v1, " numUpdates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    :cond_5
    iget-wide v1, p0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    const-string v1, " numDeletes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    :cond_6
    iget-wide v1, p0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_7

    const-string v1, " numEntries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    :cond_7
    iget-wide v1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_8

    const-string v1, " numSkippedEntries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    :cond_8
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    return-void
.end method
