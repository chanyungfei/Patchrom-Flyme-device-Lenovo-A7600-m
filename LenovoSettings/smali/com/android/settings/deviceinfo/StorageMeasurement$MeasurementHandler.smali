.class Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .line 401
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 383
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 402
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 403
    return-void
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 26
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 466
    const-string v17, "StorageMeasurement"

    const-string v20, "measureApproximateStorage"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v14, 0x0

    .line 473
    .local v14, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 474
    .local v11, "legacyPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 475
    const-string v17, "StorageMeasurement"

    const-string v20, "mVolume != null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 481
    :goto_0
    const-string v17, "StorageMeasurement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "measureApproximateStorage, path is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", legacyPath = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :try_start_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$500(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 487
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsFuseOn 1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 489
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 491
    .local v15, "stat":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v6, v0

    .line 492
    .local v6, "blockSize":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 493
    .local v18, "totalBlocks":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 494
    .local v4, "availableBlocks":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/lenovo/settings/storage/SizeUtil;->getEmmcSize()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    mul-long v20, v4, v6

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v20, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v20 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v20

    mul-long v22, v18, v6

    sub-long v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$902(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v4    # "availableBlocks":J
    .end local v6    # "blockSize":J
    .end local v15    # "stat":Landroid/os/StatFs;
    .end local v18    # "totalBlocks":J
    :cond_0
    :goto_1
    const-string v17, "StorageMeasurement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "measureApproximateStorage mTotalSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mAvailSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$800(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mOsSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$900(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", path = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1000(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)V

    .line 559
    return-void

    .line 478
    :cond_1
    const-string v17, "StorageMeasurement"

    const-string v20, "mVolume == null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 500
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 501
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 21"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v16

    .line 504
    .local v16, "stats":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 554
    .end local v16    # "stats":[J
    :catch_0
    move-exception v10

    .line 555
    .local v10, "e":Ljava/lang/Exception;
    const-string v17, "StorageMeasurement"

    const-string v20, "Problem in container service"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 509
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsFuseOn 2"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 511
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 2"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v15    # "stat":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v6, v0

    .line 515
    .restart local v6    # "blockSize":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 516
    .restart local v18    # "totalBlocks":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 519
    .restart local v4    # "availableBlocks":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->getEMMCRomTotalSize()J

    move-result-wide v20

    invoke-static/range {p1 .. p1}, Lcom/lenovo/settings/storage/StorageUtils;->getEMMCFatTotalSize(Lcom/android/internal/app/IMediaContainerService;)J

    move-result-wide v22

    sub-long v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    mul-long v20, v4, v6

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v20, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v20 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v20

    mul-long v22, v18, v6

    sub-long v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$902(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    goto/16 :goto_1

    .line 525
    .end local v4    # "availableBlocks":J
    .end local v6    # "blockSize":J
    .end local v15    # "stat":Landroid/os/StatFs;
    .end local v18    # "totalBlocks":J
    :cond_4
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 3"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 527
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 31"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v16

    .line 530
    .restart local v16    # "stats":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    goto/16 :goto_1

    .line 536
    .end local v16    # "stats":[J
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v16

    .line 537
    .restart local v16    # "stats":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    aget-wide v20, v16, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 540
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 4"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Lcom/lenovo/settings/storage/SizeUtil;->getEmmcSize()J

    move-result-wide v12

    .line 542
    .local v12, "emmcSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v17 .. v17}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    .line 543
    .local v8, "dataSize":J
    const-wide/16 v20, 0x0

    cmp-long v17, v12, v20

    if-eqz v17, :cond_6

    .line 544
    const-string v17, "StorageMeasurement"

    const-string v20, "emmcSize != 0"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v0, v12, v13}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v17, v0

    sub-long v20, v12, v8

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$902(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;J)J

    .line 547
    const-string v17, "StorageMeasurement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " other os size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$800(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_6
    const-string v17, "StorageMeasurement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "measure internal size, emmcSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "|dataSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "|mTotalSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "|mOsSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v21, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static/range {v21 .. v21}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$900(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", path = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v8    # "dataSize":J
    .end local v12    # "emmcSize":J
    :cond_7
    const-string v17, "StorageMeasurement"

    const-string v20, "mIsInternal 5"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 28
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v12, v5

    .line 563
    .local v12, "context":Landroid/content/Context;
    :goto_0
    if-nez v12, :cond_2

    .line 636
    :cond_0
    :goto_1
    return-void

    .line 562
    .end local v12    # "context":Landroid/content/Context;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 567
    .restart local v12    # "context":Landroid/content/Context;
    :cond_2
    new-instance v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 568
    .local v6, "details":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 570
    .local v8, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$800(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mOsSize:J
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$900(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->osSize:J

    .line 575
    const-string v5, "user"

    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 577
    .local v24, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 579
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 580
    .local v7, "currentUser":I
    new-instance v13, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v13, v7}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 584
    .local v13, "currentEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1100(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/16 v16, 0x1

    .line 586
    .local v16, "measureMedia":Z
    :goto_2
    const-string v5, "StorageMeasurement"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "measureMedia is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "mIsInternal is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v27, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v27 .. v27}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " isEmulated: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " mIsPrimary is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v27, v0

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static/range {v27 .. v27}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1100(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v16, :cond_7

    .line 589
    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1200()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 590
    .local v19, "type":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 591
    .local v17, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 592
    .local v20, "size":J
    iget-object v5, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 584
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "measureMedia":Z
    .end local v17    # "path":Ljava/io/File;
    .end local v19    # "type":Ljava/lang/String;
    .end local v20    # "size":J
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 597
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "measureMedia":Z
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureMediaByDatabase(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 602
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_7
    if-eqz v16, :cond_8

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v13}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 605
    .restart local v17    # "path":Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v5, v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 610
    .end local v17    # "path":Ljava/io/File;
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 611
    .local v22, "user":Landroid/content/pm/UserInfo;
    new-instance v23, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 612
    .local v23, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p1

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 613
    .restart local v20    # "size":J
    iget-object v5, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-wide/from16 v1, v20

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v5, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 603
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "size":J
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .end local v23    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v17

    goto :goto_4

    .line 617
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 618
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1100(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 619
    :cond_b
    const/16 v5, 0x2200

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 623
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v26

    mul-int v9, v5, v26

    .line 624
    .local v9, "count":I
    new-instance v4, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    invoke-direct/range {v4 .. v9}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 627
    .local v4, "observer":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 628
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 629
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 634
    .end local v4    # "observer":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v9    # "count":I
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private measureMediaByDatabase(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 23
    .param p1, "details"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v10, v6

    .line 641
    .local v10, "context":Landroid/content/Context;
    :goto_0
    if-nez v10, :cond_2

    .line 684
    :cond_0
    return-void

    .line 640
    .end local v10    # "context":Landroid/content/Context;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 647
    .restart local v10    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mIsFuseOn:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$500(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 648
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v21

    .line 653
    .local v21, "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 654
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 656
    .local v3, "mediaUri":Landroid/net/Uri;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sum(_size)"

    aput-object v7, v4, v6

    .line 659
    .local v4, "projection":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "media_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 664
    .local v5, "selection":Ljava/lang/String;
    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sMeasureMediaStoreTypes:Ljava/util/Set;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1600()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;

    .line 665
    .local v16, "mediaStoreType":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;->mMediaType:[I

    move-object/from16 v17, v0

    .line 666
    .local v17, "mediaType":[I
    const-wide/16 v14, 0x0

    .line 667
    .local v14, "mediaSize":J
    move-object/from16 v8, v17

    .local v8, "arr$":[I
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v13, :cond_8

    aget v20, v8, v12

    .line 668
    .local v20, "type":I
    const/4 v9, 0x0

    .line 670
    .local v9, "c":Landroid/database/Cursor;
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 673
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 674
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    .line 675
    .local v18, "size":J
    add-long v14, v14, v18

    .line 679
    .end local v18    # "size":J
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 648
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "mediaUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "arr$":[I
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "mediaSize":J
    .end local v16    # "mediaStoreType":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;
    .end local v17    # "mediaType":[I
    .end local v20    # "type":I
    .end local v21    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolumeEmulate:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$1500(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v21

    goto/16 :goto_1

    .line 649
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v21

    .restart local v21    # "volume":Landroid/os/storage/StorageVolume;
    goto/16 :goto_1

    .line 677
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "mediaUri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v8    # "arr$":[I
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "mediaSize":J
    .restart local v16    # "mediaStoreType":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;
    .restart local v17    # "mediaType":[I
    .restart local v20    # "type":I
    :catch_0
    move-exception v6

    .line 679
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v6

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v6

    .line 682
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v20    # "type":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MediaStoreType;->mType:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 407
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 409
    :pswitch_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 410
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 415
    .local v0, "context":Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 419
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 420
    :try_start_0
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 421
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 422
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 424
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 425
    .local v2, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 432
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 434
    .local v1, "imcs":Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 435
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 436
    monitor-exit v4

    goto :goto_0

    .end local v1    # "imcs":Lcom/android/internal/app/IMediaContainerService;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 440
    :pswitch_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 441
    :try_start_3
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 442
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 443
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 444
    monitor-exit v4

    goto :goto_0

    .line 450
    .end local v0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 447
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 448
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 450
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 454
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 455
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 459
    :pswitch_4
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method