.class public Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDumpThread"
.end annotation


# instance fields
.field final synthetic j:Lcom/mediatek/anrmanager/ANRManager;

.field private mPid:I


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;I)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->j:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1298
    iput p2, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->mPid:I

    .line 1299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->j:Lcom/mediatek/anrmanager/ANRManager;

    iget v1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->mPid:I

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->dumpBinderInfo(I)V

    .line 1302
    return-void
.end method
