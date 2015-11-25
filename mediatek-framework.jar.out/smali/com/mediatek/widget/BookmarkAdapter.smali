.class public Lcom/mediatek/widget/BookmarkAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DISPLAY_HEIGHT:I = 0xa0

.field private static final DEFAULT_DISPLAY_WIDTH:I = 0x78

.field private static final DEFAULT_REFLECTION:F = 0.25f

.field private static final DEFAULT_REFLECTION_GAP:I = 0x4

.field private static final DELICON_MARGIN_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BookmarkAdapter"


# instance fields
.field private final mBitmapCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBookmarkItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteMode:Z

.field private mDispHeight:I

.field private mDispWidth:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mReflection:F

.field private mTotalDispHeight:I

.field private mTransMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "bookmarkItems":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/BookmarkItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    const/16 v0, 0x78

    iput v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    .line 96
    const/16 v0, 0xa0

    iput v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    .line 97
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDeleteMode:Z

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    .line 130
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    .line 132
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method

.method private dumpBitmapCacheInfo()V
    .locals 7

    .prologue
    .line 509
    iget-object v4, p0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 510
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 511
    .local v2, "size":I
    const-string v3, "BookmarkAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpBitmapCacheInfo: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 514
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 515
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    const-string v5, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpBitmapCacheInfo: i = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",bmp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",recycled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 518
    :cond_1
    monitor-exit v4

    .line 519
    return-void

    .line 518
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;
    .locals 4
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "bmpCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 495
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 496
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 498
    .local v0, "entry":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 499
    monitor-exit v3

    .line 505
    .end local v0    # "entry":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 501
    .restart local v0    # "entry":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 504
    .end local v0    # "entry":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v3

    .line 505
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadImage(Landroid/widget/ImageView;I)V
    .locals 18
    .param p1, "child"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v10, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v11}, Lcom/mediatek/widget/BookmarkAdapter;->getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 185
    .local v15, "cacheBitmap":Landroid/graphics/Bitmap;
    const-string v3, "BookmarkAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage: position = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",cacheBitmap = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v15, :cond_0

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/widget/BookmarkItem;

    .line 195
    .local v16, "item":Lcom/mediatek/widget/BookmarkItem;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    .line 199
    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    .line 200
    .local v2, "originalImage":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 201
    const-string v3, "BookmarkAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No image valid for bookmark item "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 206
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 208
    .local v6, "height":I
    const-string v3, "BookmarkAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage: position = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",width = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",height = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",mDispWidth = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",mDispHeight = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v4, v4

    int-to-float v9, v5

    div-float/2addr v4, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 218
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 222
    .local v7, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 226
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    sub-float/2addr v4, v9

    mul-float/2addr v3, v4

    float-to-int v9, v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    mul-float/2addr v3, v4

    float-to-int v11, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 229
    .local v17, "reflectedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 232
    .local v14, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/BookmarkAdapter;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_0
    const-string v3, "BookmarkAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadImage cache reflection bitmap: position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",bitmapWithReflection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v10, v0

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 251
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 251
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 257
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "bitmapWithReflection":Landroid/graphics/Bitmap;
    .end local v17    # "reflectedBitmap":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_2
    const-string v3, "BookmarkAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadImage cache scaled bitmap: position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",scaledBitmap = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p2

    int-to-long v10, v0

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 264
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method


# virtual methods
.method public add(Lcom/mediatek/widget/BookmarkItem;)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/widget/BookmarkItem;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetInvalidated()V

    .line 361
    return-void
.end method

.method public clearBitmapCache()V
    .locals 7

    .prologue
    .line 417
    iget-object v4, p0, Lcom/mediatek/widget/BookmarkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 420
    .local v2, "size":I
    const-string v3, "BookmarkAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 424
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 426
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    const-string v5, "BookmarkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: i = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",bmp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",recycled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 434
    monitor-exit v4

    .line 435
    return-void

    .line 434
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "holder":Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    check-cast v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;

    .line 150
    .restart local v0    # "holder":Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    :goto_0
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mContent:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/mediatek/widget/BookmarkAdapter;->loadImage(Landroid/widget/ImageView;I)V

    .line 151
    iget-boolean v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDeleteMode:Z

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    add-int/lit8 v3, v3, 0xa

    iget v4, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mDelIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mDelIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/mediatek/widget/BookmarkAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/widget/BookmarkAdapter$1;-><init>(Lcom/mediatek/widget/BookmarkAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :goto_1
    return-object p2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x807000d

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;-><init>()V

    .line 144
    .restart local v0    # "holder":Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;
    const v1, 0x8100033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 145
    const v1, 0x8100034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mContent:Landroid/widget/ImageView;

    .line 146
    const v1, 0x8100035

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mDelIcon:Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    iget v4, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mDelIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, v0, Lcom/mediatek/widget/BookmarkAdapter$ViewHolder;->mDelIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public insert(Lcom/mediatek/widget/BookmarkItem;I)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/widget/BookmarkItem;
    .param p2, "index"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 307
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 308
    return-void
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDeleteMode:Z

    return v0
.end method

.method public recycleBitmapContents()V
    .locals 4

    .prologue
    .line 443
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 445
    .local v2, "size":I
    const/4 v1, 0x0

    .line 446
    .local v1, "item":Lcom/mediatek/widget/BookmarkItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 447
    iget-object v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/mediatek/widget/BookmarkItem;
    check-cast v1, Lcom/mediatek/widget/BookmarkItem;

    .line 448
    .restart local v1    # "item":Lcom/mediatek/widget/BookmarkItem;
    iget-object v3, v1, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    iget-object v3, v1, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/mediatek/widget/BookmarkItem;
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 348
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "removed":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_0
    return-object v0
.end method

.method public remove(Lcom/mediatek/widget/BookmarkItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/mediatek/widget/BookmarkItem;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 336
    .local v0, "succ":Z
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 339
    :cond_0
    return v0
.end method

.method public replace(Lcom/mediatek/widget/BookmarkItem;I)Lcom/mediatek/widget/BookmarkItem;
    .locals 2
    .param p1, "item"    # Lcom/mediatek/widget/BookmarkItem;
    .param p2, "index"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "replaced":Lcom/mediatek/widget/BookmarkItem;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 321
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "replaced":Lcom/mediatek/widget/BookmarkItem;
    check-cast v0, Lcom/mediatek/widget/BookmarkItem;

    .line 322
    .restart local v0    # "replaced":Lcom/mediatek/widget/BookmarkItem;
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 325
    :cond_0
    return-object v0
.end method

.method public setDeleteIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "deleteIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .param p1, "delMode"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDeleteMode:Z

    .line 391
    return-void
.end method

.method public setImageDispSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 462
    iput p1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispWidth:I

    .line 463
    iput p2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    .line 464
    iget v2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    .line 467
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v4, v3

    const v5, 0x70ffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 469
    .local v0, "shader":Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 472
    iget-object v1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 473
    return-void
.end method

.method public setImageReflection(F)V
    .locals 3
    .param p1, "reflect"    # F

    .prologue
    .line 481
    iput p1, p0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    .line 482
    iget v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/mediatek/widget/BookmarkAdapter;->mReflection:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mTotalDispHeight:I

    .line 483
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/mediatek/widget/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/mediatek/widget/BookmarkItem;>;"
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkAdapter;->mBookmarkItems:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 371
    invoke-virtual {p0}, Lcom/mediatek/widget/BookmarkAdapter;->notifyDataSetChanged()V

    .line 372
    return-void
.end method
