"use client";
import { useState } from "react";

export default function DownloadList({ files }) {
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 5;

  const totalPages = Math.ceil(files.length / itemsPerPage);

  if (files.length === 0) {
    return (
      <div className="rounded-2xl border border-dashed border-zinc-800 bg-[#0a0a0a] p-8 text-center text-zinc-500">
        등록된 다운로드 자료가 없습니다.
      </div>
    );
  }

  const startIndex = (currentPage - 1) * itemsPerPage;
  const currentFiles = files.slice(startIndex, startIndex + itemsPerPage);

  return (
    <div>
      <div className="grid gap-3">
        {currentFiles.map((file) => (
          <a
            key={file.name}
            href={file.href}
            download
            className="group flex items-center justify-between rounded-xl border border-zinc-800 bg-[#0a0a0a] px-5 py-4 transition-all hover:border-zinc-600 hover:bg-[#101010]"
          >
            <span className="font-medium text-zinc-200 group-hover:text-white truncate max-w-[80%]">
              {file.name}
            </span>
            <span className="text-sm font-bold text-zinc-600 group-hover:text-zinc-300 whitespace-nowrap ml-4">
              Download
            </span>
          </a>
        ))}
      </div>

      {totalPages > 1 && (
        <div className="mt-6 flex justify-center gap-2">
          <button
            onClick={() => setCurrentPage((p) => Math.max(1, p - 1))}
            disabled={currentPage === 1}
            className="px-4 py-2 rounded-lg border border-zinc-800 bg-[#0a0a0a] text-zinc-400 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-zinc-800 hover:text-zinc-200 transition-colors"
          >
            이전
          </button>
          <span className="flex items-center px-4 text-zinc-500 text-sm font-medium">
            {currentPage} / {totalPages}
          </span>
          <button
            onClick={() => setCurrentPage((p) => Math.min(totalPages, p + 1))}
            disabled={currentPage === totalPages}
            className="px-4 py-2 rounded-lg border border-zinc-800 bg-[#0a0a0a] text-zinc-400 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-zinc-800 hover:text-zinc-200 transition-colors"
          >
            다음
          </button>
        </div>
      )}
    </div>
  );
}
