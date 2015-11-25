.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 85
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    .line 88
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 89
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    .prologue
    .line 564
    const-wide/16 v4, 0x3c

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 566
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_0

    .line 567
    const-string v4, "Unable to build stats!"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 571
    .local v3, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 572
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 573
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 574
    const-string v4, "Failure reading: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_1
    if-eqz p7, :cond_2

    .line 578
    move-object/from16 v0, p6

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_2
    if-nez p8, :cond_3

    if-eqz p9, :cond_5

    .line 581
    :cond_3
    if-nez p9, :cond_4

    const/4 v8, 0x1

    :goto_1
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v8, p11

    .line 583
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 589
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v0, "    [--active] [--commit] [--reset] [--clear] [--write] [-h] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "  --c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 51
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 635
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 637
    .local v12, "now":J
    const/16 v46, 0x0

    .line 638
    .local v46, "isCheckin":Z
    const/16 v23, 0x0

    .line 639
    .local v23, "isCompact":Z
    const/16 v47, 0x0

    .line 640
    .local v47, "isCsv":Z
    const/16 v38, 0x0

    .line 641
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    .line 642
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    .line 643
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    .line 644
    .local v26, "dumpAll":Z
    const/4 v2, 0x0

    .line 645
    .local v2, "aggregateHours":I
    const/16 v48, 0x0

    .line 646
    .local v48, "lastIndex":I
    const/16 v27, 0x0

    .line 647
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    .line 648
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 649
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    .line 650
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    .line 651
    .local v8, "csvSepMemStats":Z
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v9, v3

    .line 652
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    .line 653
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 654
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_1e

    .line 655
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-ge v0, v3, :cond_1e

    .line 656
    aget-object v28, p3, v45

    .line 657
    .local v28, "arg":Ljava/lang/String;
    const-string v3, "--checkin"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    const/16 v46, 0x1

    .line 655
    :goto_1
    add-int/lit8 v45, v45, 0x1

    goto :goto_0

    .line 659
    :cond_0
    const-string v3, "-c"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    const/16 v23, 0x1

    goto :goto_1

    .line 661
    :cond_1
    const-string v3, "--csv"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    const/16 v47, 0x1

    goto :goto_1

    .line 663
    :cond_2
    const-string v3, "--csv-screen"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 664
    add-int/lit8 v45, v45, 0x1

    .line 665
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_4

    .line 666
    const-string v3, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 990
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 670
    .restart local v28    # "arg":Ljava/lang/String;
    .restart local v45    # "i":I
    :cond_4
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v49, v0

    .line 671
    .local v49, "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 672
    .local v40, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, p3, v45

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    .line 674
    if-nez v7, :cond_5

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 679
    :cond_5
    const/4 v3, 0x0

    aget-boolean v6, v49, v3

    .line 680
    goto/16 :goto_1

    .end local v40    # "error":[Ljava/lang/String;
    .end local v49    # "sep":[Z
    :cond_6
    const-string v3, "--csv-mem"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 681
    add-int/lit8 v45, v45, 0x1

    .line 682
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_7

    .line 683
    const-string v3, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 687
    :cond_7
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v49, v0

    .line 688
    .restart local v49    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 689
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v9

    .line 690
    if-nez v9, :cond_8

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 695
    :cond_8
    const/4 v3, 0x0

    aget-boolean v8, v49, v3

    .line 696
    goto/16 :goto_1

    .end local v40    # "error":[Ljava/lang/String;
    .end local v49    # "sep":[Z
    :cond_9
    const-string v3, "--csv-proc"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 697
    add-int/lit8 v45, v45, 0x1

    .line 698
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_a

    .line 699
    const-string v3, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 703
    :cond_a
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v49, v0

    .line 704
    .restart local v49    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 705
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    .line 706
    if-nez v11, :cond_b

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 711
    :cond_b
    const/4 v3, 0x0

    aget-boolean v10, v49, v3

    .line 712
    goto/16 :goto_1

    .end local v40    # "error":[Ljava/lang/String;
    .end local v49    # "sep":[Z
    :cond_c
    const-string v3, "--details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 713
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 714
    :cond_d
    const-string v3, "--full-details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 715
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 716
    :cond_e
    const-string v3, "--hours"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 717
    add-int/lit8 v45, v45, 0x1

    .line 718
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_f

    .line 719
    const-string v3, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 724
    :cond_f
    :try_start_0
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_1

    .line 725
    :catch_0
    move-exception v39

    .line 726
    .local v39, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 730
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    const-string v3, "--last"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 731
    add-int/lit8 v45, v45, 0x1

    .line 732
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_11

    .line 733
    const-string v3, "Error: argument required for --last"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 738
    :cond_11
    :try_start_1
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v48

    goto/16 :goto_1

    .line 739
    :catch_1
    move-exception v39

    .line 740
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --last argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 744
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    const-string v3, "--active"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 745
    const/16 v27, 0x1

    .line 746
    const/16 v38, 0x1

    goto/16 :goto_1

    .line 747
    :cond_13
    const-string v3, "--current"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 748
    const/16 v38, 0x1

    goto/16 :goto_1

    .line 749
    :cond_14
    const-string v3, "--commit"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 751
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 752
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 753
    const-string v3, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 756
    :cond_15
    const-string v3, "--reset"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 758
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 759
    const-string v3, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    monitor-exit v4

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 762
    :cond_16
    const-string v3, "--clear"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 764
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 765
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 766
    .local v44, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_17

    .line 767
    const/16 v41, 0x0

    .local v41, "fi":I
    :goto_3
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v41

    if-ge v0, v3, :cond_17

    .line 768
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 767
    add-int/lit8 v41, v41, 0x1

    goto :goto_3

    .line 771
    .end local v41    # "fi":I
    :cond_17
    const-string v3, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    monitor-exit v4

    goto/16 :goto_2

    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 774
    :cond_18
    const-string v3, "--write"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 776
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 777
    const-string v3, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    monitor-exit v4

    goto/16 :goto_2

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 780
    :cond_19
    const-string v3, "--read"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 782
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 783
    const-string v3, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    monitor-exit v4

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v3

    .line 786
    :cond_1a
    const-string v3, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 787
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 789
    :cond_1b
    const-string v3, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 790
    const/16 v24, 0x1

    .line 791
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 792
    :cond_1c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1d

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 798
    :cond_1d
    move-object/from16 v14, v28

    .line 803
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 808
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_1e
    if-eqz v47, :cond_22

    .line 809
    const-string v3, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    if-nez v6, :cond_1f

    .line 811
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_4
    array-length v3, v7

    move/from16 v0, v45

    if-ge v0, v3, :cond_1f

    .line 812
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    aget v3, v7, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 811
    add-int/lit8 v45, v45, 0x1

    goto :goto_4

    .line 816
    .end local v45    # "i":I
    :cond_1f
    if-nez v8, :cond_20

    .line 817
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_5
    array-length v3, v9

    move/from16 v0, v45

    if-ge v0, v3, :cond_20

    .line 818
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    aget v3, v9, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 817
    add-int/lit8 v45, v45, 0x1

    goto :goto_5

    .line 822
    .end local v45    # "i":I
    :cond_20
    if-nez v10, :cond_21

    .line 823
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_6
    array-length v3, v11

    move/from16 v0, v45

    if-ge v0, v3, :cond_21

    .line 824
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v4, v11, v45

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    add-int/lit8 v45, v45, 0x1

    goto :goto_6

    .line 828
    .end local v45    # "i":I
    :cond_21
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 830
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    :try_start_7
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 850
    monitor-exit v16

    goto/16 :goto_2

    :catchall_5
    move-exception v3

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v3

    .line 852
    :cond_22
    if-eqz v2, :cond_23

    .line 853
    const-string v3, "AGGREGATED OVER LAST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_2

    .line 857
    :cond_23
    if-lez v48, :cond_2e

    .line 858
    const-string v3, "LAST STATS AT INDEX "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 860
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v48

    if-lt v0, v3, :cond_24

    .line 861
    const-string v3, "Only have "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " data sets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 864
    :cond_24
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 865
    .local v42, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 866
    .local v15, "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 867
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 868
    if-nez v46, :cond_25

    if-eqz v23, :cond_26

    :cond_25
    const-string v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    :cond_26
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 873
    :cond_27
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 874
    .local v43, "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 875
    .local v37, "checkedIn":Z
    if-nez v46, :cond_28

    if-eqz v23, :cond_29

    .line 877
    :cond_28
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 879
    :cond_29
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    if-eqz v37, :cond_2a

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    :cond_2a
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    if-nez v24, :cond_2b

    if-eqz v25, :cond_2d

    .line 884
    :cond_2b
    if-nez v25, :cond_2c

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 886
    if-eqz v26, :cond_3

    .line 887
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 884
    :cond_2c
    const/16 v20, 0x0

    goto :goto_7

    :cond_2d
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 890
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto/16 :goto_2

    .line 896
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2e
    const/16 v50, 0x0

    .line 897
    .local v50, "sepNeeded":Z
    if-nez v26, :cond_2f

    if-eqz v46, :cond_3b

    .line 898
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 900
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v46, :cond_33

    const/4 v3, 0x1

    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 901
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_3a

    .line 902
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_9
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result v3

    move/from16 v0, v45

    if-ge v0, v3, :cond_3a

    .line 905
    :try_start_9
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 906
    .restart local v42    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 907
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 908
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_34

    .line 909
    if-nez v46, :cond_30

    if-eqz v23, :cond_31

    :cond_30
    const-string v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    :cond_31
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 902
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v42    # "file":Landroid/util/AtomicFile;
    :cond_32
    :goto_a
    add-int/lit8 v45, v45, 0x1

    goto :goto_9

    .line 900
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    :cond_33
    const/4 v3, 0x0

    goto :goto_8

    .line 916
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v45    # "i":I
    :cond_34
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 917
    .restart local v43    # "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 918
    .restart local v37    # "checkedIn":Z
    if-nez v46, :cond_35

    if-eqz v23, :cond_36

    .line 920
    :cond_35
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 941
    :goto_b
    if-eqz v46, :cond_32

    .line 943
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ".ci"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_a

    .line 946
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    :catch_2
    move-exception v39

    .line 947
    .local v39, "e":Ljava/lang/Throwable;
    :try_start_a
    const-string v3, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_a

    .line 953
    .end local v39    # "e":Ljava/lang/Throwable;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    :catchall_6
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 922
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v43    # "fileStr":Ljava/lang/String;
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v45    # "i":I
    :cond_36
    if-eqz v50, :cond_38

    .line 923
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 927
    :goto_c
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    if-eqz v37, :cond_37

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    :cond_37
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    if-eqz v25, :cond_39

    .line 935
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_b

    .line 925
    :cond_38
    const/16 v50, 0x1

    goto :goto_c

    :cond_39
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 938
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/16 :goto_b

    .line 953
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 956
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3b
    if-nez v46, :cond_3

    .line 957
    if-nez v38, :cond_3d

    .line 958
    if-eqz v50, :cond_3c

    .line 959
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 961
    :cond_3c
    const-string v3, "AGGREGATED OVER LAST 24 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    const-wide/16 v18, 0x18

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 965
    const-string v3, "AGGREGATED OVER LAST 3 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    const-wide/16 v18, 0x3

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 968
    const/16 v50, 0x1

    .line 970
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 971
    if-eqz v23, :cond_3f

    .line 972
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 988
    :cond_3e
    :goto_d
    monitor-exit v4

    goto/16 :goto_2

    :catchall_7
    move-exception v3

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v3

    .line 974
    :cond_3f
    if-eqz v50, :cond_40

    .line 975
    :try_start_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 977
    :cond_40
    const-string v3, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    if-nez v24, :cond_41

    if-eqz v25, :cond_43

    .line 979
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v29, v0

    if-nez v25, :cond_42

    const/16 v34, 0x1

    :goto_e
    move-object/from16 v30, p2

    move-object/from16 v31, v14

    move-wide/from16 v32, v12

    move/from16 v35, v26

    move/from16 v36, v27

    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 981
    if-eqz v26, :cond_3e

    .line 982
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_d

    .line 979
    :cond_42
    const/16 v34, 0x0

    goto :goto_e

    .line 985
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v18, p2

    move-object/from16 v19, v14

    move-wide/from16 v20, v12

    move/from16 v22, v27

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_d

    .line 649
    nop

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 358
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-gt v6, p1, :cond_1

    .line 359
    :cond_0
    const/4 v4, 0x0

    .line 379
    :goto_0
    return-object v4

    .line 361
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 365
    aget-object v1, v3, v5

    .line 366
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_3

    const-string v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 372
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 376
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 378
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 11
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x2c

    const/4 v8, 0x0

    .line 412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 414
    .local v5, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v2, v9, :cond_9

    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    :goto_1
    if-eq v0, v10, :cond_1

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_1

    const/16 v9, 0x20

    if-eq v0, v9, :cond_1

    if-eqz v0, :cond_1

    .line 414
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_0
    move v0, v8

    .line 415
    goto :goto_1

    .line 419
    .restart local v0    # "c":C
    :cond_1
    if-ne v0, v10, :cond_5

    const/4 v3, 0x1

    .line 420
    .local v3, "isSep":Z
    :goto_3
    if-nez v5, :cond_6

    .line 422
    aput-boolean v3, p3, v8

    .line 427
    :cond_2
    add-int/lit8 v9, v2, -0x1

    if-ge v5, v9, :cond_8

    .line 428
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v9, p0

    if-ge v4, v9, :cond_3

    .line 430
    aget-object v9, p0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v7, 0x0

    .line 436
    :cond_3
    if-eqz v7, :cond_8

    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid word \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8

    .line 448
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_4
    :goto_5
    return-object v1

    .restart local v0    # "c":C
    :cond_5
    move v3, v8

    .line 419
    goto :goto_3

    .line 423
    .restart local v3    # "isSep":Z
    :cond_6
    if-eqz v0, :cond_2

    aget-boolean v9, p3, v8

    if-eq v9, v3, :cond_2

    .line 424
    const-string v9, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v9, p4, v8

    goto :goto_5

    .line 429
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 441
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    .line 444
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 445
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 446
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private updateFile()V
    .locals 5

    .prologue
    .line 258
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 261
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 216
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 220
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 13
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 185
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 628
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    move-object v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 399
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 400
    if-eqz p2, :cond_0

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 403
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 557
    :try_start_0
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v1

    return v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "current":Landroid/os/Parcel;
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 459
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 460
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v4, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 461
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 462
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    if-eqz p1, :cond_0

    .line 464
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_2
    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 465
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 468
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 470
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 462
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 478
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 471
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure opening procstat file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 478
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    return-object v7
.end method

.method public getMemFactorLocked()I
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 27
    .param p1, "minTime"    # J

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 490
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 492
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 497
    .local v4, "curTime":J
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    cmp-long v19, v4, p1

    if-gez v19, :cond_2

    .line 500
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 501
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 502
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 503
    sget-object v19, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats;

    .line 504
    .local v17, "stats":Lcom/android/internal/app/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .line 506
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    cmp-long v19, v20, p1

    if-gez v19, :cond_1

    .line 508
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v20, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 509
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    .line 510
    new-instance v12, Lcom/android/internal/app/ProcessStats;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 511
    .local v12, "moreStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 512
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 513
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    .line 514
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v19, "Added stats: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v19, ", over "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 520
    const-string v19, "ProcessStatsService"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 547
    .end local v4    # "curTime":J
    .end local v6    # "current":Landroid/os/Parcel;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v14    # "now":J
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catch_0
    move-exception v7

    .line 548
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v19, "ProcessStatsService"

    const-string v20, "Failed building output pipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    const/16 v19, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    return-object v19

    .line 497
    .restart local v6    # "current":Landroid/os/Parcel;
    :catchall_0
    move-exception v19

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v19
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 550
    .end local v6    # "current":Landroid/os/Parcel;
    :catchall_1
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v19

    .line 522
    .restart local v4    # "curTime":J
    .restart local v6    # "current":Landroid/os/Parcel;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_0
    :try_start_6
    const-string v20, "ProcessStatsService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure reading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 528
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 531
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 532
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 534
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    const-string v19, "ProcessStats pipe output"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 545
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 546
    const/16 v19, 0x0

    aget-object v19, v8, v19
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1
.end method

.method public isMemFactorLowered()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_0
    throw v0
.end method

.method performWriteState()V
    .locals 6

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 269
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 270
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 271
    if-nez v0, :cond_0

    .line 272
    monitor-exit v5

    .line 294
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 275
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 284
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 277
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 286
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 290
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .prologue
    const/4 v2, 0x0

    .line 298
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 299
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 300
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 301
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 302
    const-string v3, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 349
    const-string v3, "ProcessStatsService"

    const-string v4, "Error reading process statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 21
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_3

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 134
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 135
    if-eqz p2, :cond_0

    .line 136
    add-int/lit8 p1, p1, 0x4

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_b

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v15, v15, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    aget-wide v16, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, p3, v18

    add-long v16, v16, v18

    aput-wide v16, v14, v15

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move/from16 v0, p1

    iput v0, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 147
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "ipkg":I
    :goto_1
    if-ltz v4, :cond_a

    .line 148
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 149
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "iuid":I
    :goto_2
    if-ltz v6, :cond_9

    .line 150
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 151
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "iver":I
    :goto_3
    if-ltz v7, :cond_8

    .line 152
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 153
    .local v8, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 154
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "isvc":I
    :goto_4
    if-ltz v5, :cond_7

    .line 155
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 156
    .local v10, "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isRestarting()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 157
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 154
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 133
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 158
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .restart local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_4
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 159
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 160
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 162
    :cond_5
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 163
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 165
    :cond_6
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 166
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_5

    .line 151
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 149
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 147
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 173
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_a
    const/4 v14, 0x1

    .line 175
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    :goto_6
    return v14

    :cond_b
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 188
    iget-wide v2, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v4, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 193
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdownLocked()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 203
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 205
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 384
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 392
    :cond_0
    return-void

    .line 387
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 388
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "file":Ljava/lang/String;
    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 209
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v2, :cond_2

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 229
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 230
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 231
    if-eqz p2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 236
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 238
    :cond_2
    if-eqz p2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 242
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 243
    const-string v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p1, :cond_4

    .line 245
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    monitor-exit v3

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    goto :goto_0

    .line 252
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public writeStateSyncLocked()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 213
    return-void
.end method
