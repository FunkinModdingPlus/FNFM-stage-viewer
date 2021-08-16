class Files {
    public static function getTXTFile(location:String) {
        var swagpath = sys.io.File.getContent(location);
        return(swagpath);
    }
}
