.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1483
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1449
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1453
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    .line 1454
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1449
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1459
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    .line 1460
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1464
    return-void
.end method

.method public compareTo(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)I
    .locals 4
    .param p1, "another"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .prologue
    .line 1480
    iget-wide v0, p1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1446
    check-cast p1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->compareTo(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1468
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1470
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1471
    return-void
.end method
