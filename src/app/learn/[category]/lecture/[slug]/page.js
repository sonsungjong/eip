import Link from 'next/link';
import { getResourceContent } from '@/lib/resources';
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';

export default async function LectureDetail({ params }) {
    const { category, slug } = await params;
    const decodedSlug = decodeURIComponent(slug);
    const content = await getResourceContent('lecture', decodedSlug);

    return (
        <div className="min-h-screen bg-[#0a0a0a] text-white p-6 md:p-12">
            <div className="max-w-3xl mx-auto">
                <div className="flex items-center justify-between mb-8">
                    <Link
                        href="/lectures"
                        className="inline-flex items-center text-sm text-zinc-500 hover:text-white transition-colors"
                    >
                        <svg className="w-4 h-4 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 19l-7-7m0 0l7-7m-7 7h18" />
                        </svg>
                        Back to Lectures
                    </Link>
                </div>

                <article className="prose prose-invert prose-zinc max-w-none">
                    <ReactMarkdown remarkPlugins={[remarkGfm]}>{content || "# Lecture not found."}</ReactMarkdown>
                </article>
            </div>
        </div>
    );
}
