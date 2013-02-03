defmodule MimeTypes do
  @moduledoc """
  Mime types guessing, taken from Mochiweb and converted to Elixir code
  """
  
  def from_extension(".stl") do
    "application/SLA"
  end
  
  def from_extension(".stp") do
    "application/STEP"
  end
  
  def from_extension(".step") do
    "application/STEP"
  end
  
  def from_extension(".dwg") do
    "application/acad"
  end
  
  def from_extension(".ez") do
    "application/andrew-inset"
  end
  
  def from_extension(".ccad") do
    "application/clariscad"
  end
  
  def from_extension(".drw") do
    "application/drafting"
  end
  
  def from_extension(".tsp") do
    "application/dsptype"
  end
  
  def from_extension(".dxf") do
    "application/dxf"
  end
  
  def from_extension(".xls") do
    "application/excel"
  end
  
  def from_extension(".unv") do
    "application/i-deas"
  end
  
  def from_extension(".jar") do
    "application/java-archive"
  end
  
  def from_extension(".hqx") do
    "application/mac-binhex40"
  end
  
  def from_extension(".cpt") do
    "application/mac-compactpro"
  end
  
  def from_extension(".pot") do
    "application/vnd.ms-powerpoint"
  end
  
  def from_extension(".ppt") do
    "application/vnd.ms-powerpoint"
  end
  
  def from_extension(".dms") do
    "application/octet-stream"
  end
  
  def from_extension(".lha") do
    "application/octet-stream"
  end
  
  def from_extension(".lzh") do
    "application/octet-stream"
  end
  
  def from_extension(".oda") do
    "application/oda"
  end
  
  def from_extension(".ogg") do
    "application/ogg"
  end
  
  def from_extension(".ogm") do
    "application/ogg"
  end
  
  def from_extension(".pdf") do
    "application/pdf"
  end
  
  def from_extension(".pgp") do
    "application/pgp"
  end
  
  def from_extension(".ai") do
    "application/postscript"
  end
  
  def from_extension(".eps") do
    "application/postscript"
  end
  
  def from_extension(".ps") do
    "application/postscript"
  end
  
  def from_extension(".prt") do
    "application/pro_eng"
  end
  
  def from_extension(".rtf") do
    "application/rtf"
  end
  
  def from_extension(".smi") do
    "application/smil"
  end
  
  def from_extension(".smil") do
    "application/smil"
  end
  
  def from_extension(".sol") do
    "application/solids"
  end
  
  def from_extension(".vda") do
    "application/vda"
  end
  
  def from_extension(".xlm") do
    "application/vnd.ms-excel"
  end
  
  def from_extension(".cod") do
    "application/vnd.rim.cod"
  end
  
  def from_extension(".pgn") do
    "application/x-chess-pgn"
  end
  
  def from_extension(".cpio") do
    "application/x-cpio"
  end
  
  def from_extension(".csh") do
    "application/x-csh"
  end
  
  def from_extension(".deb") do
    "application/x-debian-package"
  end
  
  def from_extension(".dcr") do
    "application/x-director"
  end
  
  def from_extension(".dir") do
    "application/x-director"
  end
  
  def from_extension(".dxr") do
    "application/x-director"
  end
  
  def from_extension(".gz") do
    "application/x-gzip"
  end
  
  def from_extension(".hdf") do
    "application/x-hdf"
  end
  
  def from_extension(".ipx") do
    "application/x-ipix"
  end
  
  def from_extension(".ips") do
    "application/x-ipscript"
  end
  
  def from_extension(".js") do
    "application/x-javascript"
  end
  
  def from_extension(".skd") do
    "application/x-koan"
  end
  
  def from_extension(".skm") do
    "application/x-koan"
  end
  
  def from_extension(".skp") do
    "application/x-koan"
  end
  
  def from_extension(".skt") do
    "application/x-koan"
  end
  
  def from_extension(".latex") do
    "application/x-latex"
  end
  
  def from_extension(".lsp") do
    "application/x-lisp"
  end
  
  def from_extension(".scm") do
    "application/x-lotusscreencam"
  end
  
  def from_extension(".mif") do
    "application/x-mif"
  end
  
  def from_extension(".com") do
    "application/x-msdos-program"
  end
  
  def from_extension(".exe") do
    "application/octet-stream"
  end
  
  def from_extension(".cdf") do
    "application/x-netcdf"
  end
  
  def from_extension(".nc") do
    "application/x-netcdf"
  end
  
  def from_extension(".pl") do
    "application/x-perl"
  end
  
  def from_extension(".pm") do
    "application/x-perl"
  end
  
  def from_extension(".rar") do
    "application/x-rar-compressed"
  end
  
  def from_extension(".sh") do
    "application/x-sh"
  end
  
  def from_extension(".shar") do
    "application/x-shar"
  end
  
  def from_extension(".swf") do
    "application/x-shockwave-flash"
  end
  
  def from_extension(".sit") do
    "application/x-stuffit"
  end
  
  def from_extension(".sv4cpio") do
    "application/x-sv4cpio"
  end
  
  def from_extension(".sv4crc") do
    "application/x-sv4crc"
  end
  
  def from_extension(".tar.gz") do
    "application/x-tar-gz"
  end
  
  def from_extension(".tgz") do
    "application/x-tar-gz"
  end
  
  def from_extension(".tar") do
    "application/x-tar"
  end
  
  def from_extension(".tcl") do
    "application/x-tcl"
  end
  
  def from_extension(".texi") do
    "application/x-texinfo"
  end
  
  def from_extension(".texinfo") do
    "application/x-texinfo"
  end
  
  def from_extension(".man") do
    "application/x-troff-man"
  end
  
  def from_extension(".me") do
    "application/x-troff-me"
  end
  
  def from_extension(".ms") do
    "application/x-troff-ms"
  end
  
  def from_extension(".roff") do
    "application/x-troff"
  end
  
  def from_extension(".t") do
    "application/x-troff"
  end
  
  def from_extension(".tr") do
    "application/x-troff"
  end
  
  def from_extension(".ustar") do
    "application/x-ustar"
  end
  
  def from_extension(".src") do
    "application/x-wais-source"
  end
  
  def from_extension(".zip") do
    "application/zip"
  end
  
  def from_extension(".tsi") do
    "audio/TSP-audio"
  end
  
  def from_extension(".au") do
    "audio/basic"
  end
  
  def from_extension(".snd") do
    "audio/basic"
  end
  
  def from_extension(".kar") do
    "audio/midi"
  end
  
  def from_extension(".mid") do
    "audio/midi"
  end
  
  def from_extension(".midi") do
    "audio/midi"
  end
  
  def from_extension(".mp2") do
    "audio/mpeg"
  end
  
  def from_extension(".mp3") do
    "audio/mpeg"
  end
  
  def from_extension(".mpga") do
    "audio/mpeg"
  end
  
  def from_extension(".aif") do
    "audio/x-aiff"
  end
  
  def from_extension(".aifc") do
    "audio/x-aiff"
  end
  
  def from_extension(".aiff") do
    "audio/x-aiff"
  end
  
  def from_extension(".m3u") do
    "audio/x-mpegurl"
  end
  
  def from_extension(".wax") do
    "audio/x-ms-wax"
  end
  
  def from_extension(".wma") do
    "audio/x-ms-wma"
  end
  
  def from_extension(".rpm") do
    "audio/x-pn-realaudio-plugin"
  end
  
  def from_extension(".ram") do
    "audio/x-pn-realaudio"
  end
  
  def from_extension(".rm") do
    "audio/x-pn-realaudio"
  end
  
  def from_extension(".ra") do
    "audio/x-realaudio"
  end
  
  def from_extension(".wav") do
    "audio/x-wav"
  end
  
  def from_extension(".pdb") do
    "chemical/x-pdb"
  end
  
  def from_extension(".ras") do
    "image/cmu-raster"
  end
  
  def from_extension(".gif") do
    "image/gif"
  end
  
  def from_extension(".ief") do
    "image/ief"
  end
  
  def from_extension(".jpe") do
    "image/jpeg"
  end
  
  def from_extension(".jpeg") do
    "image/jpeg"
  end
  
  def from_extension(".jpg") do
    "image/jpeg"
  end
  
  def from_extension(".jp2") do
    "image/jp2"
  end
  
  def from_extension(".png") do
    "image/png"
  end
  
  def from_extension(".tif") do
    "image/tiff"
  end
  
  def from_extension(".tiff") do
    "image/tiff"
  end
  
  def from_extension(".pnm") do
    "image/x-portable-anymap"
  end
  
  def from_extension(".pbm") do
    "image/x-portable-bitmap"
  end
  
  def from_extension(".pgm") do
    "image/x-portable-graymap"
  end
  
  def from_extension(".ppm") do
    "image/x-portable-pixmap"
  end
  
  def from_extension(".rgb") do
    "image/x-rgb"
  end
  
  def from_extension(".xbm") do
    "image/x-xbitmap"
  end
  
  def from_extension(".xwd") do
    "image/x-xwindowdump"
  end
  
  def from_extension(".iges") do
    "model/iges"
  end
  
  def from_extension(".igs") do
    "model/iges"
  end
  
  def from_extension(".mesh") do
    "model/mesh"
  end
  
  def from_extension(".") do
    ""
  end
  
  def from_extension(".msh") do
    "model/mesh"
  end
  
  def from_extension(".silo") do
    "model/mesh"
  end
  
  def from_extension(".vrml") do
    "model/vrml"
  end
  
  def from_extension(".wrl") do
    "model/vrml"
  end
  
  def from_extension(".css") do
    "text/css"
  end
  
  def from_extension(".htm") do
    "text/html"
  end
  
  def from_extension(".html") do
    "text/html"
  end
  
  def from_extension(".asc") do
    "text/plain"
  end
  
  def from_extension(".c") do
    "text/plain"
  end
  
  def from_extension(".cc") do
    "text/plain"
  end
  
  def from_extension(".f90") do
    "text/plain"
  end
  
  def from_extension(".f") do
    "text/plain"
  end
  
  def from_extension(".hh") do
    "text/plain"
  end
  
  def from_extension(".m") do
    "text/plain"
  end
  
  def from_extension(".txt") do
    "text/plain"
  end
  
  def from_extension(".rtx") do
    "text/richtext"
  end
  
  def from_extension(".sgm") do
    "text/sgml"
  end
  
  def from_extension(".sgml") do
    "text/sgml"
  end
  
  def from_extension(".tsv") do
    "text/tab-separated-values"
  end
  
  def from_extension(".jad") do
    "text/vnd.sun.j2me.app-descriptor"
  end
  
  def from_extension(".etx") do
    "text/x-setext"
  end
  
  def from_extension(".xml") do
    "application/xml"
  end
  
  def from_extension(".dl") do
    "video/dl"
  end
  
  def from_extension(".fli") do
    "video/fli"
  end
  
  def from_extension(".flv") do
    "video/x-flv"
  end
  
  def from_extension(".gl") do
    "video/gl"
  end
  
  def from_extension(".mp4") do
    "video/mp4"
  end
  
  def from_extension(".mpe") do
    "video/mpeg"
  end
  
  def from_extension(".mpeg") do
    "video/mpeg"
  end
  
  def from_extension(".mpg") do
    "video/mpeg"
  end
  
  def from_extension(".mov") do
    "video/quicktime"
  end
  
  def from_extension(".qt") do
    "video/quicktime"
  end
  
  def from_extension(".viv") do
    "video/vnd.vivo"
  end
  
  def from_extension(".vivo") do
    "video/vnd.vivo"
  end
  
  def from_extension(".asf") do
    "video/x-ms-asf"
  end
  
  def from_extension(".asx") do
    "video/x-ms-asx"
  end
  
  def from_extension(".wmv") do
    "video/x-ms-wmv"
  end
  
  def from_extension(".wmx") do
    "video/x-ms-wmx"
  end
  
  def from_extension(".wvx") do
    "video/x-ms-wvx"
  end
  
  def from_extension(".avi") do
    "video/x-msvideo"
  end
  
  def from_extension(".movie") do
    "video/x-sgi-movie"
  end
  
  def from_extension(".mime") do
    "www/mime"
  end
  
  def from_extension(".ice") do
    "x-conference/x-cooltalk"
  end
  
  def from_extension(".vrm") do
    "x-world/x-vrml"
  end
  
  def from_extension(".spx") do
    "audio/ogg"
  end
  
  def from_extension(".xhtml") do
    "application/xhtml+xml"
  end
  
  def from_extension(".bz2") do
    "application/x-bzip2"
  end
  
  def from_extension(".doc") do
    "application/msword"
  end
  
  def from_extension(".z") do
    "application/x-compress"
  end
  
  def from_extension(".ico") do
    "image/x-icon"
  end
  
  def from_extension(".bmp") do
    "image/bmp"
  end
  
  def from_extension(".m4a") do
    "audio/mpeg"
  end
  
  def from_extension(".csv") do
    "text/csv"
  end
  
  def from_extension(".eot") do
    "application/vnd.ms-fontobject"
  end
  
  def from_extension(".m4v") do
    "video/mp4"
  end
  
  def from_extension(".svg") do
    "image/svg+xml"
  end
  
  def from_extension(".svgz") do
    "image/svg+xml"
  end
  
  def from_extension(".ttc") do
    "application/x-font-ttf"
  end
  
  def from_extension(".ttf") do
    "application/x-font-ttf"
  end
  
  def from_extension(".vcf") do
    "text/x-vcard"
  end
  
  def from_extension(".webm") do
    "video/web"
  end
  
  def from_extension(".webp") do
    "image/web"
  end
  
  def from_extension(".woff") do
    "application/x-font-woff"
  end
  
  def from_extension(".otf") do
    "font/opentype"
  end
  
  def from_extension(_) do
    "application/octet-stream"
  end
end